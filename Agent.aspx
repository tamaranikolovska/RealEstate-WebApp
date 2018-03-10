<%@ Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="Agent.aspx.cs" Inherits="WebApplication1.Agent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html>
    <div style="height: 510px; width: 1330px">
        <div id="agentmanudiv">
        &nbsp;&nbsp;
        <asp:Button ID="HomeFromAgentButton" CssClass="HomeFromAgentButtoncss" runat="server" OnClick="HomeFromAgentButton_Click" Text="Home" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ListOfMyRealEstatesButtonAgent" CssClass="ListOfMyRealEstatesButtonAgentcss" runat="server" Text="List Of My Real Estates" OnClick="ListOfMyRealEstatesButtonAgent_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="MessagesButtonAgent" CssClass="MessagesButtonAgentcss" runat="server" Text="Messages" OnClick="MessagesButtonAgent_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="LogoutFromAgentButton" CssClass="LogoutFromAgentButtoncss" runat="server" OnClick="LogoutFromAgentButton_Click" Text="Log out" />
        </div>
        <br />
        <br />
        <asp:TextBox ID="AgentsusernameTextBox" runat="server" Height="16px" Width="184px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                            <div id="tablediv3">
                                <div id="realestatedetails3">
                                    <div id="imggggg">
                                        <img src="<%#Eval("img1") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img2222">
                                        <img src="<%#Eval("img2") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img3333">
                                        <img src="<%#Eval("img3") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img4444">
                                        <img src="<%#Eval("img4") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img5555">
                                        <img src="<%#Eval("img5") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img6666">
                                        <img src="<%#Eval("img6") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img7777">
                                        <img src="<%#Eval("img7") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img8888">
                                        <img src="<%#Eval("img8") %>" height="100" width="100"/>
                                    </div>
                                    <div id="cat3">
                                        Category: </td>
                                        <td><%#Eval("category") %></td>
                                    </div>
                                    <div id="stat3">
                                        Status: </td>
                                        <td><%#Eval("restatus") %></td>
                                    </div>
                                    <div id="agentname3">
                                        Agent name: </td>
                                        <td><%#Eval("agentName") %></td>
                                    </div>
                                    <div id="descr3">
                                        Description: </td>
                                        <td><%#Eval("descr") %></td>
                                    </div>
                                    <div id="noofrooms3">
                                        Number of rooms: </td>
                                        <td><%#Eval("noofrooms") %></td>
                                    </div>
                                    <div id="area3">
                                        Area(m2): </td>
                                        <td><%#Eval("aream2") %></td>
                                    </div>
                                    <div id="streetaddress3">
                                        Street address: </td>
                                        <td><%#Eval("streetaddress") %></td>
                                    </div>
                                    <div id="city3">
                                        City: </td>
                                        <td><%#Eval("city") %></td>
                                    </div>
                                    <div id="pri3">
                                        Price: </td>
                                        <td><%#Eval("price") %></td>
                                    </div>
                                    <div id="curr3">
                                        Currency: </td>
                                        <td><%#Eval("currency") %></td>
                                    </div>
                                    <div id="ownername3">
                                        Owner: </td>
                                        <td><%#Eval("ownername") %></td>
                                    </div>
                                    <div id="contactphone3">
                                        Contact phone: </td>
                                        <td><%#Eval("contactphone") %></td>
                                    </div>
                                    <div id="solvedlinkbtndiv"><asp:LinkButton CommandArgument='<%#Eval("id")%>' OnClick="SolvedPublish" CssClass="solvedlinkbtnn" ID="solvedlinkbtn" runat="server">Solved</asp:LinkButton></div>
                                </div>
                                <div id="blankspace"></div>
                            </div>
                        </ItemTemplate>
                </asp:Repeater>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <div id="agentsendmessage">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="agentFromLabel" CssClass="agentFromLabelcss" runat="server" Text="From:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="agentsendername" CssClass="agentsendernamee" runat="server" Height="30px" Width="270px"></asp:TextBox>
                    
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="agentToLabel" CssClass="agentToLabelcss" runat="server" Text="To: "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="agentPickReceiverDropDownList" CssClass="agentPickReceiverDropDownListtt" runat="server" Height="30px" Width="255px" DataSourceID="agentSqlDataSource2" DataTextField="Expr1" DataValueField="Expr1" >
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="agentSqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" SelectCommand="SELECT username + ' - ' + userstatus AS Expr1 FROM UserRegistration WHERE (userstatus IN ('Administrator', 'User'))"></asp:SqlDataSource>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="agentMessagesubjectLabel" CssClass="agentMessagesubjectLabelcss" runat="server" Text="Subject:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="agentTextBox10" CssClass="agentTextBox100" runat="server" Height="30px" Width="247px">/</asp:TextBox>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <textarea id="agentMessageContent" style="width: 380px; height: 80px;" runat="server" name="S2"></textarea><br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="agentSendMessageButton" CssClass="agentSendMessageButtonnn" runat="server" Height="40px" Text="Send" Width="225px" OnClick="AgentSendMessageButton_Click" />
                    <br />
                    <br />
                    
                </div>

                <div id="agentsendmessages" class="agentsendmessagess">
                    <asp:Repeater ID="agentSendMessagesRepeater2" runat="server">
                        <ItemTemplate>
                            <div id="tablediv6">
                                <div id="realestatedetails6">
                                    <div id="senderr6"><td>Sender: <%#Eval("sender") %></td></div>
                                    <div id="receiverr6"><td>Receiver: <%#Eval("receiver") %></td></div>                   
                                    <div id="subjecttt6"><td>Subject: <%#Eval("subjectt") %></td></div>
                                    <div id="contentt6"><td>Content: <%#Eval("content") %></td></div>
                                    <div id="deletemessage6"><asp:LinkButton CssClass="deletemessageLinkButtonn6" ID="deletemessageLinkButton6" CommandArgument='<%#Eval("id")%>' OnClick="AgentDeleteMessage" runat="server">Delete X</asp:LinkButton></div>
                                </div>
                                <div id="blankspace6"></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

                <div id="agentreceivedmessages">
                    <asp:Repeater ID="agentReceivedMessagesRepeater2" runat="server">
                        <ItemTemplate>
                            <div id="tablediv66">
                                <div id="realestatedetails66">
                                    <div id="senderr66"><td>Sender: <%#Eval("sender") %></td></div>
                                    <div id="receiverr66"><td>Receiver: <%#Eval("receiver") %></td></div>                   
                                    <div id="subjecttt66"><td>Subject: <%#Eval("subjectt") %></td></div>
                                    <div id="contentt66"><td>Content: <%#Eval("content") %></td></div>
                                    <div id="deletemessage66"><asp:LinkButton CssClass="deletemessageLinkButtonn66" ID="deletemessageLinkButton66" CommandArgument='<%#Eval("id")%>' OnClick="AgentDeleteMessage66" runat="server">Delete X</asp:LinkButton></div>
                                </div>
                                <div id="blankspace66"></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </asp:View>
        </asp:MultiView>
        </div>

</asp:Content>
