<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CRUDDatabase.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gv1" runat="server"></asp:GridView>
            <asp:Button ID="insert" runat="server" Text="Insert" OnClick="insert_Click"/>
            <asp:Button ID="update" runat="server" Text="update" OnClick="update_Click"/>
            <asp:Button ID="delete" runat="server" Text="delete" OnClick="delete_Click"/>
            <asp:Button ID="display" runat="server" Text="display" OnClick="display_Click"/>
        </div>
    </form>
</body>
</html>
