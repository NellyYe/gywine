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

public partial class 注册页面 : System.Web.UI.Page
{
    DataClassesDataContext dd=new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
            Response.Redirect("Default.aspx");
            
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        tb_mail.Text = Class1.qq;
        var results = from u in dd.admin
                      where u.用户名 == tb_name.Text
                      select u;
        int t = 0;
        foreach (var d in results)
        {
            t++;
        }
        if (t <= 0)
        {
            var newCustorm = new admin
            {
                用户名 = tb_name.Text.ToString(),
                密码 = tb_password.Text.ToString(),
                邮箱 = tb_mail.Text.ToString()

            };
            dd.admin.InsertOnSubmit(newCustorm);
            dd.SubmitChanges();
            Response.Write("<script>alert('注册成功!');window.location.href ='用户登录.aspx'</script>"); 
        }
        else
        {
            Response.Write("<script>alert('注册失败，用户名已占领！请重新注册');</script>");
        }


    }
}
