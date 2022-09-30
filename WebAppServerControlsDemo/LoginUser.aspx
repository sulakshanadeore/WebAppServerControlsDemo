<%@ Page Language="C#" Trace="true" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="WebAppServerControlsDemo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                 <asp:Label ID="lblUserName" runat="server" Text="Enter User Name:"></asp:Label>

                 <asp:TextBox ID="txtusername" runat="server" ToolTip="Enter Username in caps"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="Label1" runat="server" Text="Enter Password:"></asp:Label>
                 <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:Label ID="lblmessage" runat="server"></asp:Label>
                 <br />
                 <br />
                 <asp:Button ID="Button1" runat="server" Text="Button" />
                 <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                 <asp:ImageButton ID="imgLoginbtn" runat="server" AlternateText="Who Are You?" ImageUrl="~/AppImages/bunny1.jpg" ToolTip="Pls enter valid user id and password" />

            </asp:Panel>
        </div>
       
    </form>
</body>
</html>
