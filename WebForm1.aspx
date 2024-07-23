<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RegistrationForm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell>Name : </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="Name"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Email : 
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="Email"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Mobile Number : 
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="Mobile"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Country : 
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" OnSelectedIndexChanged="Country_SelectedIndexChanged" ID="Country" AutoPostBack="true">
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        State : 
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" OnSelectedIndexChanged="State_SelectedIndexChanged" ID="State" AutoPostBack="true">
                           
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        City : 
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" ID="City"></asp:DropDownList>
                    </asp:TableCell>
                 </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Certificates : 
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBoxList runat="server" ID="Cbl">
                            <asp:ListItem>IELTS</asp:ListItem>
                            <asp:ListItem>NCAT</asp:ListItem>
                            <asp:ListItem>GRE</asp:ListItem>
                            <asp:ListItem>Summer Internship</asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Gender : 
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButtonList ID="Gender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button ID="btn" runat="server" Text="Submit" OnClick="btn_Click"/>
            <asp:Label ID="lblresult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
