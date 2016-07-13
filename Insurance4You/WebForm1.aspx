<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Insurance4You.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;<div>
    
        <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label><br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label><br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Sname"></asp:Label><br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><br />
    
    </div>
        <asp:Label ID="Label4" runat="server" Text="nothing happen"></asp:Label>
    </form>
</body>
</html>
