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

public partial class admin_news : System.Web.UI.Page
{
    string conStr = "Data Source=.;Initial Catalog=jiu;User ID=sa;Pwd=1234";
    DataClassesDataContext dc = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = dc.news;//显示新闻信息
        Repeater1.DataBind();
        if (!Page.IsPostBack)
        {
            Label1.Text = Class1.Name;
        }
        
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            string id = e.CommandArgument.ToString();
            string sqlstring = "delete from news where id=" + id;
            SqlConnection scon = new SqlConnection(conStr);
            scon.Open();
            SqlCommand scmd = new SqlCommand(sqlstring, scon);
            if (scmd.ExecuteNonQuery() == -1)
            {
                Response.Write("<script>alert('删除失败!');</script>");
            }
            else
            {
                Response.Write("<script>alert('删除成功!');</script>");
            }
            scon.Close();

        }
        else if (e.CommandName == "fix")
        {
            
            SqlConnection conn = new SqlConnection(conStr);
            conn.Open();
            {
                using (SqlCommand cmd = new SqlCommand("update news set 添加内容=@className where id=@id", conn))
                {
                    cmd.Parameters.AddWithValue("@className", tb_SiteName.Text.ToString());
                    cmd.Parameters.AddWithValue("@id", e.CommandArgument);
                    cmd.ExecuteNonQuery();
                    
                }
            }
            conn.Close();

        }
        Response.Redirect(Request.Url.ToString());
    }
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
       
        var newCustorm = new news
        {
            添加内容 = tb_SiteName.Text.ToString(),

            更新时间=Convert.ToDateTime(tb_SiteUrl.Text)
        };
        dc.news.InsertOnSubmit(newCustorm);
        dc.SubmitChanges();
        Response.Write("<script>alert('添加成功!');</script>");
        Response.Redirect(Request.Url.ToString());
    }
    protected void tb_SiteUrl_Load(object sender, EventArgs e)
    {
        tb_SiteUrl.Text = DateTime.Now.ToString();
    }
}
