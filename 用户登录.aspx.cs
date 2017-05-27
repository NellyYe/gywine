using System;
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

public partial class _Default : System.Web.UI.Page 
{
    
    DataClassesDataContext dd = new DataClassesDataContext();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Class1.Name = TextBox1.Text.ToString();
        var results = from r in dd.admin
                      select new
                      {
                          r.id,
                          r.用户名,
                          r.密码   
                      };
        foreach (var item in results)
        {
            if (item.用户名==TextBox1.Text && item.密码==TextBox2.Text)
            {
                if (item.id==1&&RadioButton1.Checked)
                {
                    Response.Redirect("admin_back.aspx");
                }
                else if (RadioButton2.Checked)
                {
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Write("<script>alert('登陆失败，请重新登陆!');</script>"); 
                }
            }
            else
            {
                Label1.Text = "请重新输入登陆信息";
            }
        }
            Session["UserName"] = TextBox1.Text;
            Session["UserPwd"] = TextBox2.Text;
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
