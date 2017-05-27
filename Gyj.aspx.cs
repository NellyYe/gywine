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

public partial class Gyj : System.Web.UI.Page
{
    DataClassesDataContext dd = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "登录人：" + Class1.Name;
        if (!IsPostBack)
        {
            var results = from r in dd.product where r.产品类别 == "高阳郡系列" select r;

            Repeater1.DataSource = results;
            Repeater1.DataBind();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        var results = from r in dd.product where r.产品类别 == "高阳郡系列" select r;
        Repeater1.DataSource = results;
        Repeater1.DataBind();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        var results = from r in dd.product where r.产品类别 == "贾公系列" select r;
        Repeater1.DataSource = results;
        Repeater1.DataBind();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        var results = from r in dd.product where r.产品类别 == "定制系列" select r;
        Repeater1.DataSource = results;
        Repeater1.DataBind();
    }
}
