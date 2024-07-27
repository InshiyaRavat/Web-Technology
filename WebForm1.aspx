<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ImageMap.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/Image/shape.jpeg" >
                <asp:CircleHotSpot NavigateUrl="https://en.wikipedia.org/wiki/Circle" Radius="82" X="208" Y="352" AlternateText="It's a circle"/>
                <asp:RectangleHotSpot NavigateUrl="https://en.wikipedia.org/wiki/Rectangle" Left="350" Top="270" Bottom="430" Right="510" AlternateText="It's a rectangle" />
                <asp:PolygonHotSpot NavigateUrl="https://en.wikipedia.org/wiki/Triangle" Coordinates="650,270,560,430,735,435" AlternateText="It's Triangle"/>
            </asp:ImageMap>
        </div>
    </form>
</body>
</html>
