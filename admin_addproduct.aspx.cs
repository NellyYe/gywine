using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class admin_addproduct : System.Web.UI.Page
{
    DataClassesDataContext dc = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //list添加字段
            dw_ProductClass.Items.Add("高阳郡系列");
            dw_ProductClass.Items.Add("贾公系列");
            dw_ProductClass.Items.Add("定制系列");
            Label1.Text = Class1.Name;//取静态值赋值

        }
    }
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
        //添加产品信息
        var newCustorm = new product
        {
            产品名称 = tb_ProductName.Text.ToString(),
            产品类别 = dw_ProductClass.Text.ToString(),
            产品图片=tb_PicUrl.Text .ToString(),
            产品介绍 = TextBox1.Text.ToString()

        };
        dc.product.InsertOnSubmit(newCustorm);
        dc.SubmitChanges();
        Response.Write("<script>alert('添加成功!');</script>");//弹出对话框，提醒
        Response.Redirect(Request.Url.ToString());//刷新界面
    }
}
