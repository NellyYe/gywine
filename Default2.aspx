<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">1</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server">2</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server">3</asp:LinkButton>
        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                 
                    <div style="float:left; width:33.3%; margin-top:10px; margin-bottom:10px; text-align:center">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("产品图片")%>' ImageAlign="Middle" /><br /><br />
                        <%#DataBinder.Eval(Container.DataItem, "产品介绍") %>
                    </div>

                    
                   </ItemTemplate>
        </asp:Repeater>
     </div> 
    </form>
</body>
</html>
