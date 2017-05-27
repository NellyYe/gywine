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

public partial class admin_lianjie : System.Web.UI.Page
{
    string conStr = "Data Source=.;Initial Catalog=jiu;User ID=sa;Pwd=1234";
    DataClassesDataContext dc = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        //导入WebConfig数据
        Repeater1.DataSource = dc.WebConfig;
        Repeater1.DataBind();
        if (!Page.IsPostBack)
        {
            Label1.Text = Class1.Name;
        }
        
    }
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
        //往数据库中添加网站信息
        var newCustorm = new WebConfig
        {
            网站名称 = tb_SiteName.Text.ToString(),

            网站地址 = tb_SiteUrl.Text.ToString()
        };
        dc.WebConfig.InsertOnSubmit(newCustorm);
        dc.SubmitChanges();
        Response.Write("<script>alert('添加成功!');</script>");//弹出提示窗
        Response.Redirect(Request.Url.ToString());
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

            if (e.CommandName == "del")//删除操作
            {
                string id = e.CommandArgument.ToString();
                string sqlstring = "delete from WebConfig where id=" + id;//sql语句
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
            else if (e.CommandName == "fix")//修改操作
            {

                SqlConnection conn = new SqlConnection(conStr);
                conn.Open();
                {
                    using (SqlCommand cmd = new SqlCommand("update WebConfig set 网站名称=@webName,网站地址=@address  where id=@id", conn))
                    {
                        cmd.Parameters.AddWithValue("@webName", tb_SiteName.Text.ToString());//修改数值
                        cmd.Parameters.AddWithValue("@address", tb_SiteUrl.Text.ToString());
                        cmd.Parameters.AddWithValue("@id", e.CommandArgument);
                        cmd.ExecuteNonQuery();

                    }
                }
                conn.Close();

            }
            Response.Redirect(Request.Url.ToString());//刷新界面

    }
}

