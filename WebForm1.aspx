<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ShopTotalPrice.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList runat="server" ID="cbl1" AutoPostBack="true" OnSelectedIndexChanged="cbl1_SelectedIndexChanged">
                <asp:ListItem Value="10">Phone</asp:ListItem>
                <asp:ListItem Value="20">Laptop</asp:ListItem>
                <asp:ListItem Value="30">TV</asp:ListItem>
                <asp:ListItem Value="40">Car</asp:ListItem>
                <asp:ListItem Value="50">House</asp:ListItem>
            </asp:CheckBoxList>
            <asp:TextBox runat="server" Enabled="false" ID="tb1"></asp:TextBox>
            <asp:Button runat="server" ID="btn1" OnClick="btn1_Click" Text="purchase"/>
            <asp:Label runat="server" ID="lbl1" ></asp:Label>
        </div>
    </form>
</body>
</html>
