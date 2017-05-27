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

public partial class Default2 : System.Web.UI.Page
{
    DataClassesDataContext dd = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var results = from r in dd.product select r;

            Repeater2.DataSource = results;
            Repeater2.DataBind();
        }


    }
    protected void ChangeImg(int t)
    {
        var results = from r in dd.product where r.id == t select r;
        Repeater2.DataSource = results;
        Repeater2.DataBind();
    }
    protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        var results = from r in dd.product where r.产品类别 == "高阳郡系列" select r;
        Repeater2.DataSource = results;
        Repeater2.DataBind();
    }
}
