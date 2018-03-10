<%@ Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="WebApplication1.Administrator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>

    <div style="height: 686px; width: 1330px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;
        <div id="adminmenudiv">
            <asp:Button ID="HomeFromAdminButton" CssClass="HomeFromAdminButtoncss" runat="server" OnClick="HomeFromAdminButton_Click" Text="Home" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ListofUnapprovedpublishButtonAdmin" CssClass="ListofUnapprovedpublishButtonAdmincss" runat="server" Text="List of Unapproved publish" OnClick="ListofUnapprovedpublishButtonAdmin_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="MessagesButtonAdmin" CssClass="MessagesButtonAdmincss" runat="server" Text="Messages" OnClick="MessagesButtonAdmin_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="LogoutFromAdminButton" CssClass="LogoutFromAdminButtoncss" runat="server" OnClick="LogoutFromAdminButton_Click" Text="Log out" />
        </div>
        <br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <br />
                
                <br />
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div id="tablediv1">
                            <div id="realestatedetails1">
                                <div id="imggg"><img src="<%#Eval("img1") %>" height="100" width="100"/></div>
                                <div id="img22"><img src="<%#Eval("img2") %>" height="100" width="100"/></div>
                                <div id="img33"><img src="<%#Eval("img3") %>" height="100" width="100"/></div>
                                <div id="img44"><img src="<%#Eval("img4") %>" height="100" width="100"/></div>
                                <div id="img55"><img src="<%#Eval("img5") %>" height="100" width="100"/></div>
                                <div id="img66"><img src="<%#Eval("img6") %>" height="100" width="100"/></div>
                                <div id="img77"><img src="<%#Eval("img7") %>" height="100" width="100"/></div>
                                <div id="img88"><img src="<%#Eval("img8") %>" height="100" width="100"/></div>
                                <div id="cat1">Category: </td><td><%#Eval("category") %></div> 
                                <div id="stat1">Status: </td><td><%#Eval("restatus") %></div>
                                <div id="agentname1">Agent name: </td><td><%#Eval("agentName") %></div>                  
                                <div id="descr1">Description: <%#Eval("descr") %></div>
                                <div id="noofrooms1">Number of rooms: </td><td><%#Eval("noofrooms") %></div>
                                <div id="area1">Area(m2): </td><td><%#Eval("aream2") %></div>
                                <div id="streetaddress1">Street address: </td><td><%#Eval("streetaddress") %></div>
                                <div id="city1">City: </td><td><%#Eval("city") %></div>
                                <div id="pri1">Price: </td><td><%#Eval("price") %></div>
                                <div id="curr1">Currency: </td><td><%#Eval("currency") %></div>
                                <div id="ownername1">Owner: </td><td><%#Eval("ownername") %></div>                                
                                <div id="contactphone1">Contact phone: </td><td><%#Eval("contactphone") %></div>
                                <div id="approvelinkbtndiv"><asp:LinkButton CommandArgument='<%#Eval("id")%>' OnClick="ApprovePublish" CssClass="approvelinkbtnn" ID="approvelinkbtn" runat="server">Approve</asp:LinkButton></div>
                                <div id="denydiv"><asp:LinkButton CommandArgument='<%#Eval("id")%>' OnClick="DenyPublish" CssClass="denylinkbtnn" ID="denylinkbtn" runat="server">Deny</asp:LinkButton></div>
                            </div>
                            <div id="blankspace"></div>
                       </div>
            </ItemTemplate>
                </asp:Repeater>
                <br />
                <br />
            </asp:View>
            <asp:View ID="AdminMessagesView2" runat="server">
                <div id="adminsendmessage">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="adminFromLabel" CssClass="adminFromLabelcss" runat="server" Text="From:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="adminsendername" CssClass="adminsendernamee" runat="server" Height="31px" Width="304px"></asp:TextBox>
                    
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="adminToLabel" CssClass="adminToLabelcss" runat="server" Text="To: "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="adminPickReceiverDropDownList" CssClass="adminPickReceiverDropDownListtt" runat="server" Height="30px" Width="330px" DataSourceID="adminSqlDataSource2" DataTextField="Expr1" DataValueField="Expr1" >
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="adminSqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" SelectCommand="SELECT username + ' - ' + userstatus AS Expr1 FROM UserRegistration WHERE (userstatus IN ('Agent', 'User'))"></asp:SqlDataSource>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="adminMessagesubjectLabel" CssClass="adminMessagesubjectLabelcss" runat="server" Text="Subject:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="adminTextBox10" CssClass="adminTextBox100" runat="server" Height="30px" Width="290px">/</asp:TextBox>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <textarea id="adminMessageContent" style="width: 380px; height: 80px;" runat="server" name="S2"></textarea><br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="adminSendMessageButton" CssClass="adminSendMessageButtonnn" runat="server" Height="44px" Text="Send" Width="223px" OnClick="AdminSendMessageButton_Click" />
                    <br />
                    <br />
                    
                </div>

                <div id="adminmessagesdiv">
                    <div id="adminsendmessages" class="adminsendmessagess">
                        <asp:Repeater ID="adminSendMessagesRepeater2" runat="server">
                            <ItemTemplate>
                                <div id="tablediv5">
                                    <div id="realestatedetails5">
                                        <div id="senderr5"><td>Sender: <%#Eval("sender") %></td></div>
                                        <div id="receiverr5"><td>Receiver: <%#Eval("receiver") %></td></div>                   
                                        <div id="subjecttt5"><td>Subject: <%#Eval("subjectt") %></td></div>
                                        <div id="contentt5"><td>Content: <%#Eval("content") %></td></div>
                                        <div id="deletemessage5"><asp:LinkButton CssClass="deletemessageLinkButtonn5" ID="deletemessageLinkButton5" CommandArgument='<%#Eval("id")%>' OnClick="AdminDeleteMessage" runat="server">Delete X</asp:LinkButton></div>
                                    </div>
                                    <div id="blankspace5"></div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                    <div id="adminreceivedmessages">
                        <asp:Repeater ID="adminReceivedMessagesRepeater2" runat="server">
                            <ItemTemplate>
                                <div id="tablediv445">
                                    <div id="realestatedetails445">
                                        <div id="senderr45"><td>Sender: <%#Eval("sender") %></td></div>
                                        <div id="receiverr45"><td>Receiver: <%#Eval("receiver") %></td></div>                   
                                        <div id="subjecttt45"><td>Subject: <%#Eval("subjectt") %></td></div>
                                        <div id="contentt45"><td>Content: <%#Eval("content") %></td></div>
                                        <div id="deletemessage45"><asp:LinkButton CssClass="deletemessageLinkButtonn45" ID="deletemessageLinkButton45" CommandArgument='<%#Eval("id")%>' OnClick="AdminDeleteMessage45" runat="server">Delete X</asp:LinkButton></div>
                                    </div>
                                    <div id="blankspace445"></div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>
        </div>

</asp:Content>