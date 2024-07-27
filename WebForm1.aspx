<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FileUpload.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID ="file" runat="server"  AutoPostBack="true"/>
            <asp:Button ID="btn" runat="server" OnClick="btn_Click" Text="Upload"/>
        </div>
    </form>
</body>
</html>
