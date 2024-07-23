<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BasicCalculator.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table Height="100%" BackColor="#cc99ff" BorderStyle="Outset" BorderWidth="2px" runat="server">
                <asp:TableRow>
                    <asp:TableHeaderCell>Number 1:</asp:TableHeaderCell>
                    <asp:TableCell runat="server"><asp:TextBox ID="n1" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableHeaderCell>Number 2:</asp:TableHeaderCell>
                    <asp:TableCell runat="server"><asp:TextBox ID="n2" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell runat="server">
                        <asp:Button ID="btnadd" OnClick="btnadd_Click" Text="ADD" runat="server" />
                        <asp:Button ID="btnsub" OnClick="btnsub_Click" Text="SUB" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell runat="server">
                        <asp:Button ID="btnmul" OnClick="btnmul_Click" Text="MUL" runat="server" />
                        <asp:Button ID="btndiv" OnClick="btndiv_Click" Text="DIV" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell runat="server">
                        <asp:Label runat="server">Answer: </asp:Label>
                        <asp:Label runat="server" ID="lblans"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
