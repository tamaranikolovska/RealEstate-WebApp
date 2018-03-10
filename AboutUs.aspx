<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WebApplication1.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="AboutUsStyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div id="aboutusmaindiv">
        <div id="imgdiv"><asp:Image ID="Image1" ImageUrl="~/homeslideshowimages/aboutusimage.jpg" runat="server" Height="630px" Width="767px" /></div>
        <div id="textdiv"><p id="title"> &nbsp;&nbsp; Our Story </p>
            <p id="firstpar">
                Specialists in owning, developing and managing multifamily residential apartment communities, our agency has become one of the largest publicly traded companies of its kind in the U.S. Currently, it owns more than 55,000 apartments across the United States.</p>
            <p id="secondpar">
                The company remains committed to maintaining a diverse portfolio of high quality apartment structures. In addition, our agency is focused on providing a proactive, dynamic and vibrant work environment for its employees. Perks include discounted rentals for employees and a hefty 410(k) matching program.</p>
            <p> &nbsp;</p>
        </div>
    </div>
    </form>
</body>
</html>
