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

public partial class admin_pawchanges : System.Web.UI.Page
{
    string conStr = "Data Source=.;Initial Catalog=jiu;User ID=sa;Pwd=1234";
    DataClassesDataContext dc = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Label1.Text = Class1.Name;
        }
    }
    protected void btn_Ok_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(conStr);
        conn.Open();
        {
            SqlCommand cmd = new SqlCommand("update admin set 密码=@Name where id=1", conn);
                {
                    cmd.Parameters.AddWithValue("@Name", tb_ConNewPwd.Text.ToString());
                    cmd.ExecuteNonQuery();
                }                
        }
        conn.Close();
        
    }
}
