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

public partial class Contact : System.Web.UI.Page
{
    string conStr = "Data Source=.;Initial Catalog=jiu;User ID=sa;Pwd=1234";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Label1.Text = Class1.Name;
            Label2.Text = "登录人：" + Class1.Name;

        }
        string na = Class1.Name;
        string sql = "select 留言内容 from zhaoshang where 用户名='#0'".Replace("#0", na);
        SqlConnection con = new SqlConnection(conStr);
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label3.Text = dr["留言内容"].ToString();

        }
        con.Close();
    }

}
