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

public partial class Message : System.Web.UI.Page
{
    DataClassesDataContext dc = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            tb_names.Text=Class1.Name;
            Label1.Text = "登录人：" + Class1.Name;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (tb_names.Text=="")
        {
            Response.Write("<script>alert('请先登录!');</script>");
        }
        else
        {
        var newCustorm = new zhaoshang
        {
            用户名 = tb_names.Text,
            留言内容 = tb_note.Text
        };
        dc.zhaoshang.InsertOnSubmit(newCustorm);
        dc.SubmitChanges();
        Response.Write("<script>alert('提交成功!');</script>");
        }

    }
}
