<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AccessWebService.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tb" runat="server" />
            <asp:Button ID="btn" runat="server" Text="Get Student" OnClick="btn_Click" />
            <asp:GridView ID="gv" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
