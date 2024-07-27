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
                          <asp:RequiredFieldValidator ID="reqname" ForeColor="Red" ControlToValidate="Name" runat="server" SetFocusOnError="true" ErrorMessage="Name should not be empty"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Name" ValidationExpression="^[A-Za-z\s]+$" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Name should not contain number">
                          </asp:RegularExpressionValidator>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Email : 
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqemail" ForeColor="Red" ControlToValidate="Email" runat="server" SetFocusOnError="true" ErrorMessage="Email should not be empty"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Email" ValidationExpression="^[a-zA-Z0-9_]+@[a-zA-Z]+\.[a-zA-Z]{2,}$" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Email should @ and .">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Mobile Number : 
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="Mobile"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqmobile" ForeColor="Red" ControlToValidate="Mobile" runat="server" SetFocusOnError="true" ErrorMessage="Mobile no. should not be empty"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="mbl" ForeColor="Red" ControlToValidate="Mobile" runat="server" SetFocusOnError="true" ErrorMessage="Mobile no. should be Indian" ValidationExpression="^[6-9][0-9]{9}"></asp:RegularExpressionValidator> 
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Country : 
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" OnSelectedIndexChanged="Country_SelectedIndexChanged" ID="Country" AutoPostBack="true">
                            <asp:ListItem Value="">--select--</asp:ListItem>
                            <asp:ListItem Value="USA">USA</asp:ListItem>
                            <asp:ListItem Value="India">India</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="reqcountry" InitialValue="" ControlToValidate="Country" runat="server" ForeColor="Red" ErrorMessage="You must select a country" SetFocusOnError="true"></asp:RequiredFieldValidator>
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
                            <asp:ListItem Value="IELTS">IELTS</asp:ListItem>
                            <asp:ListItem Value="NCAT">NCAT</asp:ListItem>
                            <asp:ListItem Value="GRE">GRE</asp:ListItem>
                            <asp:ListItem Value="Summer Internship">Summer Internship</asp:ListItem>
                        </asp:CheckBoxList>
                        <asp:CustomValidator ID="RequiredFieldValidator1" OnServerValidate="RequiredFieldValidator1_ServerValidate" ControlToValidate="Country" runat="server" ForeColor="Red" ErrorMessage="You must select an option" ></asp:CustomValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Gender : 
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButtonList ID="Gender" runat="server">
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Female">Female</asp:ListItem>
                        </asp:RadioButtonList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" InitialValue="" ControlToValidate="Gender" runat="server" ForeColor="Red" ErrorMessage="You must select one gender6" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Date Of Birth
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button Text="Show Calender" OnClick="btn_cal_Click" runat="server" ID="btn_cal"/>                        
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Calendar ID="cal1" runat="server" Visible="false" BackColor="WhiteSmoke" Caption="DOB" DayHeaderStyle-BorderColor="Yellow" DayNameFormat="FirstLetter" FirstDayOfWeek="Sunday" NextMonthText=">>" PrevMonthText="<<" OtherMonthDayStyle-BackColor="#666699" SelectedDayStyle-BackColor="#0000ff" OnDayRender="cal1_DayRender"></asp:Calendar>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button ID="btn" runat="server" Text="Submit" OnClick="btn_Click"/>
            <asp:Label ID="lblresult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
