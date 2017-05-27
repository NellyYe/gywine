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
using System.Data.SqlClient;

public partial class 信息完善 : System.Web.UI.Page
{
    string conStr = "Data Source=.;Initial Catalog=jiu;User ID=sa;Pwd=1234";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
         username.Text=Class1.Name;
        TextBox1.Text = Class1.Name;          
        }


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text=="")
        {
            Response.Write("<script>alert('请先登录！')</script>");
        }
        else
        {
        SqlConnection conn = new SqlConnection(conStr);
        conn.Open();
        {
            SqlCommand cmd = new SqlCommand("update admin set 手机号=@phone,收货地址=@address,邮箱=@qq  where 用户名=@id", conn);
            {
                cmd.Parameters.AddWithValue("@phone", tb_num.Text.ToString());
                cmd.Parameters.AddWithValue("@address", tb_address.Text.ToString());
                cmd.Parameters.AddWithValue("@qq", tb_qq.Text.ToString());
                cmd.Parameters.AddWithValue("@id",TextBox1.Text.ToString());
                cmd.ExecuteNonQuery();

            }
        }
        conn.Close();
       Response.Write("<script>alert('修改成功!请返回主页')</script>");
        }


    }
}
