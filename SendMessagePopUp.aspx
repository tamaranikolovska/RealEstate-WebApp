<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMessagePopUp.aspx.cs" Inherits="WebApplication1.SendMessagePopUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="SendMessagePopUpStyleSheet.css" runat="server" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="sendmessagefrompopup">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="FromLabel10" runat="server" Text="From:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="sendername10" CssClass="sendernamee10" runat="server" Height="30px" OnTextChanged="sendername10_TextChanged"></asp:TextBox>
                    
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ToLabel10" runat="server" Text="To: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="PickReceiverDropDownList10" CssClass="PickReceiverDropDownListtt10" runat="server" Height="30px" Width="255px" DataSourceID="SqlDataSource2" DataTextField="Expr1" DataValueField="Expr1" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" SelectCommand="SELECT username + ' - ' + userstatus AS Expr1 FROM UserRegistration WHERE (userstatus IN ('Agent', 'Administrator'))"></asp:SqlDataSource>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="MessagesubjectLabel10" runat="server" Text="Subject:"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1010" CssClass="TextBox10010" runat="server" Height="30px" Width="247px">/</asp:TextBox>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <textarea id="MessageContent10" runat="server" name="S2"></textarea><br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="SendMessageButton10" CssClass="SendMessageButtonnn10" runat="server" Height="40px" Text="Send" Width="156px" OnClick="PopUpSendMessageButton_Click" />
            <br />
            <br />  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="MessageSuccessfullySendLabel" runat="server" Text="Message successfully send."></asp:Label>
        </div>
    </form>
</body>
</html>
