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

public partial class _Default : System.Web.UI.Page
{
    DataClassesDataContext dd = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "登录人："+ Class1.Name;
        if (!IsPostBack)
        {
            var results = from r in dd.product select r;
            Repeater1.DataSource = results;
            Repeater1.DataBind();//在repeater中显示产品信息
        }
    }
    protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
    {

    }
}
