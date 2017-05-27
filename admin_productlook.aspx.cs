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

public partial class admin_productlook : System.Web.UI.Page
{
    string conStr = "Data Source=.;Initial Catalog=jiu;User ID=sa;Pwd=1234";
    DataClassesDataContext dc = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Label1.Text = Class1.Name;
        }
        Repeater1.DataSource = dc.product;
        Repeater1.DataBind();
        
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        if (e.CommandName == "del")
        {
            string id = e.CommandArgument.ToString();
            string sqlstring = "delete from product where id=" + id;
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
        Response.Redirect(Request.Url.ToString());
    }
}
