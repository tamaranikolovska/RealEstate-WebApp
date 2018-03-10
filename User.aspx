<%@ Page Language="C#" Debug="true" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="WebApplication1.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
    <div style="height: 1000px; width: 1330px">
    
        &nbsp;&nbsp;
        <div id="usermenudiv">
        <asp:Button ID="BackHomeFromUserButton" CssClass="BackHomeFromUserButtoncss" runat="server" OnClick="Button1_Click" Text="Home" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="NewPublishButton" CssClass="NewPublishButtoncss" runat="server" OnClick="NewPublishButton_Click" Text="New Publish" />
            &nbsp; &nbsp;<asp:Button ID="PublishButton" CssClass="PublishButtoncss" runat="server" OnClick="PublishButton_Click" Text="Published" />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="MessagesButton" CssClass="MessagesButtoncss" runat="server" OnClick="MessagesButton_Click" Text="Messages" />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="SuggestionButton" CssClass="SuggestionButtoncss" runat="server" OnClick="SuggestionButton_Click" Text="Suggestion" />   
        &nbsp;&nbsp;&nbsp;<asp:Button ID="SpecificSuggestionsButton" CssClass="SpecificSuggestionsButtoncss" OnClick="GiveMeMoreSpecificPosts_Click" runat="server" Text="Specific Suggestions" Height="38px" Width="150px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="LogoutFromUserButton" CssClass="LogoutFromUserButtoncss" runat="server" OnClick="LogoutFromUserButton_Click" Text="Log out" />
        </div>
        &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <h2>&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="SuggestMeNewREButton" CssClass="SuggestMeNewREButtoncss" runat="server" Text="Suggest me new real estates" OnClick="SuggestMeNewREButton_Click" Height="52px" Width="340px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Image ID="EsteticBorderImage1" ImageUrl="~/socialmedia/esteticborder.png" Width="765px" runat="server" Height="11px" style="margin-left: 0px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>
                <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="NoapartmentsButton" runat="server" CssClass="NoapartmentsButtoncss" Height="36px" Text="Do not suggest me apartments" OnClick="noapartments_click" Width="304px" />
                    &nbsp;<asp:Button ID="NohousesButton" runat="server" CssClass="NohousesButtoncss" Height="36px" Text="Do not suggest me houses" OnClick="nohouses_click" Width="284px" />
                </h2>
                <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="NobungalowsButton" runat="server" CssClass="NobungalowsButtoncss" Height="36px" Text="Do not suggest me bungalows" OnClick="nobungalows_click" Width="278px" />
                    &nbsp;<asp:Button ID="NoofficesButton" runat="server" CssClass="NoofficesButtoncss" Height="36px" Text="Do not suggest me offices" OnClick="nooffices_click" Width="256px" />
                    &nbsp;<asp:Button ID="NocamptrailersButton" runat="server" CssClass="NocamptrailersButtoncss" Height="36px" Text="Do not suggest me camp trailers" OnClick="nocamptrailers_click" Width="288px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Image ID="EsteticBorderImage" runat="server" CssClass="EsteticBorderImagecss" Height="11px" ImageUrl="~/socialmedia/esteticborder.png" Width="765px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Repeater ID="Repeater2SuggestionsForUser" runat="server">
                    <ItemTemplate>
                            <div id="tablediv2sugg">
                                <div id="realestatedetails2sugg">
                                    <div id="imggggsugg">
                                        <img src="<%#Eval("ru_img1") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img222sugg">
                                        <img src="<%#Eval("ru_img2") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img333sugg">
                                        <img src="<%#Eval("ru_img3") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img444sugg">
                                        <img src="<%#Eval("ru_img4") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img555sugg">
                                        <img src="<%#Eval("ru_img5") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img666sugg">
                                        <img src="<%#Eval("ru_img6") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img777sugg">
                                        <img src="<%#Eval("ru_img7") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img888sugg">
                                        <img src="<%#Eval("ru_img8") %>" height="100" width="100"/>
                                    </div>
                                    <div id="cat2sugg">
                                        Category: </td>
                                        <td><%#Eval("ru_category") %></td>
                                    </div>
                                    <div id="stat2sugg">
                                        Status: </td>
                                        <td><%#Eval("ru_restatus") %></td>
                                    </div>
                                    <div id="agentname2sugg">
                                        Agent name: </td>
                                        <td><%#Eval("ru_agentName") %></td>
                                    </div>
                                    <div id="descr2sugg">
                                        Description: </td>
                                        <td><%#Eval("ru_descr") %></td>
                                    </div>
                                    <div id="noofrooms2sugg">
                                        Number of rooms: </td>
                                        <td><%#Eval("ru_noofrooms") %></td>
                                    </div>
                                    <div id="area2sugg">
                                        Area(m2): </td>
                                        <td><%#Eval("ru_aream2") %></td>
                                    </div>
                                    <div id="streetaddress2sugg">
                                        Street address: </td>
                                        <td><%#Eval("ru_streetaddress") %></td>
                                    </div>
                                    <div id="city2sugg">
                                        City: </td>
                                        <td><%#Eval("ru_city") %></td>
                                    </div>
                                    <div id="pri2sugg">
                                        Price: </td>
                                        <td><%#Eval("ru_price") %></td>
                                    </div>
                                    <div id="curr2sugg">
                                        Currency: </td>
                                        <td><%#Eval("ru_currency") %></td>
                                    </div>
                                    <div id="ownername2sugg">
                                        Owner: </td>
                                        <td><%#Eval("ru_ownername") %></td>
                                    </div>
                                    <div id="contactphone2sugg">
                                        Contact phone: </td>
                                        <td><%#Eval("ru_contactphone") %></td>
                                    </div>
                                    <div id="NotinterestedanymoreLinkButtondiv"><asp:LinkButton ID="NotinterestedanymoreLinkButton" CommandArgument='<%#Eval("ru_id")%>' OnClick="notinterestedforthispostanymore_click" CssClass="NotinterestedanymoreLinkButtoncss" runat="server">Not interested X</asp:LinkButton></div>
                                </div>
                                <div id="blankspacesugg"></div>
                            </div>
                        </ItemTemplate>
                </asp:Repeater>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <h2>
                    &nbsp;<asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                        <ItemTemplate>
                            <div id="tablediv2">
                                <div id="realestatedetails2">
                                    <div id="imgggg">
                                        <img src="<%#Eval("img1") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img222">
                                        <img src="<%#Eval("img2") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img333">
                                        <img src="<%#Eval("img3") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img444">
                                        <img src="<%#Eval("img4") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img555">
                                        <img src="<%#Eval("img5") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img666">
                                        <img src="<%#Eval("img6") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img777">
                                        <img src="<%#Eval("img7") %>" height="100" width="100"/>
                                    </div>
                                    <div id="img888">
                                        <img src="<%#Eval("img8") %>" height="100" width="100"/>
                                    </div>
                                    <div id="cat2">
                                        Category: </td>
                                        <td><%#Eval("category") %></td>
                                    </div>
                                    <div id="stat2">
                                        Status: </td>
                                        <td><%#Eval("restatus") %></td>
                                    </div>
                                    <div id="agentname2">
                                        Agent name: </td>
                                        <td><%#Eval("agentName") %></td>
                                    </div>
                                    <div id="descr2">
                                        Description: </td>
                                        <td><%#Eval("descr") %></td>
                                    </div>
                                    <div id="noofrooms2">
                                        Number of rooms: </td>
                                        <td><%#Eval("noofrooms") %></td>
                                    </div>
                                    <div id="area2">
                                        Area(m2): </td>
                                        <td><%#Eval("aream2") %></td>
                                    </div>
                                    <div id="streetaddress2">
                                        Street address: </td>
                                        <td><%#Eval("streetaddress") %></td>
                                    </div>
                                    <div id="city2">
                                        City: </td>
                                        <td><%#Eval("city") %></td>
                                    </div>
                                    <div id="pri2">
                                        Price: </td>
                                        <td><%#Eval("price") %></td>
                                    </div>
                                    <div id="curr2">
                                        Currency: </td>
                                        <td><%#Eval("currency") %></td>
                                    </div>
                                    <div id="ownername2">
                                        Owner: </td>
                                        <td><%#Eval("ownername") %></td>
                                    </div>
                                    <div id="contactphone2">
                                        Contact phone: </td>
                                        <td><%#Eval("contactphone") %></td>
                                    </div>
                                </div>
                                <div id="blankspace"></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <div id="sendmessage">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="FromLabel" CssClass="FromLabelcss" runat="server" Text="From:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="sendername" CssClass="sendernamee" runat="server" Height="30px" Width="283px"></asp:TextBox>
                    
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="ToLabel" CssClass="ToLabelcss" runat="server" Text="To: "></asp:Label>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="PickReceiverDropDownList" CssClass="PickReceiverDropDownListtt" runat="server" Height="31px" Width="321px" DataSourceID="SqlDataSource2" DataTextField="Expr1" DataValueField="Expr1" >
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" SelectCommand="SELECT username + ' - ' + userstatus AS Expr1 FROM UserRegistration WHERE (userstatus IN ('Agent', 'Administrator'))"></asp:SqlDataSource>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="MessagesubjectLabel" CssClass="MessagesubjectLabelcss" runat="server" Text="Subject:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox10" CssClass="TextBox100" runat="server" Height="30px" Width="247px">/</asp:TextBox>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <textarea id="MessageContent" runat="server" name="S2" style="width: 380px; height: 80px;"></textarea><br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="SendMessageButton" CssClass="SendMessageButtonnn" runat="server" Height="50px" Text="Send" Width="220px" OnClick="SendMessageButton_Click" />
                    <br />
                    <br />
                    
                </div>
                <div id="imagesmanipulation">
                <div id="sendmessages" class="sendmessagess">
                    <asp:Repeater ID="SendMessagesRepeater2" runat="server">
                        <ItemTemplate>
                            <div id="tablediv4">
                                <div id="realestatedetails4">
                                    <div id="senderr"><td>Sender: <%#Eval("sender") %></td></div>
                                    <div id="receiverr"><td>Receiver: <%#Eval("receiver") %></td></div>                   
                                    <div id="subjecttt"><td>Subject: <%#Eval("subjectt") %></td></div>
                                    <div id="contentt"><td>Content: <%#Eval("content") %></td></div>
                                    <div id="deletemessage"><asp:LinkButton CssClass="deletemessageLinkButtonn" ID="deletemessageLinkButton" CommandArgument='<%#Eval("id")%>' OnClick="DeleteMessage" runat="server">Delete X</asp:LinkButton></div>
                                </div>
                                <div id="blankspace4"></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

                <div id="receivedmessages">
                    <asp:Repeater ID="ReceivedMessagesRepeater2" runat="server">
                        <ItemTemplate>
                            <div id="tablediv44">
                                <div id="realestatedetails44">
                                    <div id="senderr4"><td>Sender: <%#Eval("sender") %></td></div>
                                    <div id="receiverr4"><td>Receiver: <%#Eval("receiver") %></td></div>                   
                                    <div id="subjecttt4"><td>Subject: <%#Eval("subjectt") %></td></div>
                                    <div id="contentt4"><td>Content: <%#Eval("content") %></td></div>
                                    <div id="deletemessage4"><asp:LinkButton CssClass="deletemessageLinkButtonn4" ID="deletemessageLinkButton4" CommandArgument='<%#Eval("id")%>' OnClick="DeleteMessage4" runat="server">Delete X</asp:LinkButton></div>
                                </div>
                                <div id="blankspace44"></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                    </div>
                <h2>
                   
                </h2>
            </asp:View>
            <asp:View ID="View4" runat="server">
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div id="dvediv">
                <div id="uploadimagesdiv">
                <asp:FileUpload ID="FileUpload1" CssClass="FileUpload1css" runat="server" Height="34px" Width="237px" />
                <br />
                <br />
                <br />
                &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div id="uploadButtondiv"><asp:Button ID="uploadButton" CssClass="uploadButtoncss" runat="server" Height="41px" OnClick="uploadButton_Click" Text="Upload" Width="95px" /></div>
                <br />
                
                    <div id="gd1">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="GridView11" EmptyDataText="No files uploaded" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="Text" HeaderText="" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkDownload" runat="server" CommandArgument='<%# Eval("Value") %>' OnClick="DownloadFile" Text="Download"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%# Eval("Value") %>' OnClick="DeleteFile" Text="Delete" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
               </div>
                    <div id="probno"><asp:Image ID="prvaslika" ImageUrl="~/homeslideshowimages/image1.jpg" runat="server" Height="302px" Width="681px" /></div>
               </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="64px"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" Width="63px"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" Width="60px"></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server" Width="50px"></asp:TextBox>
                <asp:TextBox ID="TextBox5" runat="server" Width="32px"></asp:TextBox>
                <asp:TextBox ID="TextBox6" runat="server" Width="37px"></asp:TextBox>
                <asp:TextBox ID="TextBox7" runat="server" Height="16px" Width="30px"></asp:TextBox>
                <asp:TextBox ID="TextBox8" runat="server" Width="39px"></asp:TextBox>
                <asp:TextBox ID="TextBox9" runat="server" Width="35px"></asp:TextBox>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div id="catstatusagentdiv">
                    <br />
                <div id="CategoryLabelUser0div"><asp:Label ID="CategoryLabelUser0" CssClass="CategoryLabelUser0css" runat="server" Text="Category:"></asp:Label></div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="CategoryDropDownListdiv"><asp:DropDownList ID="CategoryDropDownList" CssClass="CategoryDropDownListcss" AutoPostBack="true" runat="server" OnSelectedIndexChanged="CategoryDropDownList_SelectedIndexChanged">
                        <asp:ListItem Selected="True">house</asp:ListItem>
                        <asp:ListItem>apartment</asp:ListItem>
                        <asp:ListItem>bungalow</asp:ListItem>
                        <asp:ListItem>camp trailer</asp:ListItem>
                        <asp:ListItem>Office</asp:ListItem>
                    </asp:DropDownList></div>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="statusLabeldiv"><asp:Label ID="statusLabel" CssClass="statusLabelcss" runat="server" Text="For rent/For sale/Buying/Saling/Renting: "></asp:Label></div>
                    &nbsp;
                    <div id="statusDropDownListdiv">
                        <asp:DropDownList ID="statusDropDownList" CssClass="statusDropDownListcss" runat="server">
                            <asp:ListItem Selected="True">for sale</asp:ListItem>
                            <asp:ListItem>for rent</asp:ListItem>
                            <asp:ListItem>buying</asp:ListItem>
                            <asp:ListItem>selling</asp:ListItem>
                            <asp:ListItem>renting</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="agentnameLabeldiv"><asp:Label ID="agentnameLabel" CssClass="agentnameLabelcss" runat="server" Text="Agent name:"></asp:Label></div>
                    &nbsp;&nbsp;&nbsp;
                    <div id="AgentDropDownListdiv"><asp:DropDownList ID="AgentDropDownList" CssClass="AgentDropDownListcss" runat="server" DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="username" >
                    </asp:DropDownList></div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" SelectCommand="SELECT [username] FROM [UserRegistration] WHERE ([userstatus] = @userstatus)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Agent" Name="userstatus" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <div id="probno2">
                <div id="descnoroomsaream2"><br />
                    <div id="DescLabeldiv"><asp:Label ID="DescLabel" CssClass="DescLabelcss" runat="server" Text="Description:"></asp:Label></div>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="DescTextAreadiv">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <textarea id="DescTextArea" style="height: 65px; width: 280px;" runat="server" name="S1"></textarea></div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="noofroomsLabeldiv"><asp:Label ID="noofroomsLabel" CssClass="noofroomsLabelcss" runat="server" Text="Number of rooms:"></asp:Label></div>
                    &nbsp;&nbsp;<div id="noofroomsDropDownListdiv"><asp:DropDownList ID="noofroomsDropDownList" CssClass="noofroomsDropDownListcss" runat="server">
                        <asp:ListItem Selected="True">1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                    </asp:DropDownList></div>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="areaLabeldiv"><asp:Label ID="areaLabel" CssClass="areaLabelcss" runat="server" Text="Area(m2):"></asp:Label></div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="areaTextBoxdiv"><asp:TextBox ID="areaTextBox" CssClass="areaTextBoxcss" runat="server" Height="30px"></asp:TextBox></div>
                </div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div id="locationdiv"> <br />
                        <div id="staddLabeldiv"><asp:Label ID="staddLabel" CssClass="staddLabelcss" runat="server" Text="Street address:"></asp:Label></div>
                    &nbsp;<div id="staddTextBoxdiv"><asp:TextBox ID="staddTextBox" CssClass="staddTextBoxcss" runat="server" OnTextChanged="staddTextBox_TextChanged"></asp:TextBox></div>
                
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="cityLabeldiv"><asp:Label ID="cityLabel" CssClass="cityLabelcss" runat="server" Text="City:"></asp:Label></div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="cityDropDownListdiv"><asp:DropDownList ID="cityDropDownList" CssClass="cityDropDownListcss" runat="server">
                        <asp:ListItem Selected="True">Skopje</asp:ListItem>
                        <asp:ListItem>Veles</asp:ListItem>
                        <asp:ListItem>Demir Kapija</asp:ListItem>
                        <asp:ListItem>Kavadarci</asp:ListItem>
                        <asp:ListItem>Negotivno</asp:ListItem>
                        <asp:ListItem>Sveti Nikole</asp:ListItem>
                        <asp:ListItem>Berovo</asp:ListItem>
                        <asp:ListItem>Vinica</asp:ListItem>
                        <asp:ListItem>Delchevo</asp:ListItem>
                        <asp:ListItem>Kochani</asp:ListItem>
                        <asp:ListItem>Makedonska Kamenica</asp:ListItem>
                        <asp:ListItem>Pehchevo</asp:ListItem>
                        <asp:ListItem>Probishtip</asp:ListItem>
                        <asp:ListItem>Shtip</asp:ListItem>
                        <asp:ListItem>Debar</asp:ListItem>
                        <asp:ListItem>Kichevo</asp:ListItem>
                        <asp:ListItem>Makedonski Brod</asp:ListItem>
                        <asp:ListItem>Ohrid</asp:ListItem>
                        <asp:ListItem>Struga</asp:ListItem>
                        <asp:ListItem>Bogdanci</asp:ListItem>
                        <asp:ListItem>Valandovo</asp:ListItem>
                        <asp:ListItem>Gevgelija</asp:ListItem>
                        <asp:ListItem>Dojran</asp:ListItem>
                        <asp:ListItem>Radovish</asp:ListItem>
                        <asp:ListItem>Strumica</asp:ListItem>
                        <asp:ListItem>Bitola</asp:ListItem>
                        <asp:ListItem>Demir Hisar</asp:ListItem>
                        <asp:ListItem>Krushevo</asp:ListItem>
                        <asp:ListItem>Prilep</asp:ListItem>
                        <asp:ListItem>Resen</asp:ListItem>
                        <asp:ListItem>Gostivar</asp:ListItem>
                        <asp:ListItem>Tetovo</asp:ListItem>
                        <asp:ListItem>Kratovo</asp:ListItem>
                        <asp:ListItem>Kriva Palanka</asp:ListItem>
                        <asp:ListItem>Kumanovo</asp:ListItem>
                    </asp:DropDownList></div>
                </div>
                    <div id="slika2div"><asp:Image ID="Image2" ImageUrl="~/homeslideshowimages/image2.png" runat="server" Height="471px" Width="425px" /></div>
                </div>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div id="pricecurrdiv">
                        <br /><div id="priceLabeldiv"><asp:Label ID="priceLabel" CssClass="priceLabelcss" runat="server" Text="Price:"></asp:Label></div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="priceTextBoxdiv"><asp:TextBox ID="priceTextBox" CssClass="priceTextBoxcss" runat="server"></asp:TextBox></div>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="currLabeldiv"><asp:Label ID="currLabel" CssClass="currLabelcss" runat="server" Text="Currency:"></asp:Label></div>
                    &nbsp;
                    <div id="currDropDownListdiv">
                        <asp:DropDownList ID="currDropDownList" CssClass="currDropDownListcss" runat="server">
                            <asp:ListItem Selected="True">denari</asp:ListItem>
                            <asp:ListItem>euro</asp:ListItem>
                            <asp:ListItem>dollar</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div id="contactownerdiv">
                    <br /><div id="publisherUsernameLabeldiv"><asp:Label ID="publisherUsernameLabel" CssClass="publisherUsernameLabelcss" runat="server" Text="Publisher(username):"></asp:Label></div>
                    &nbsp;&nbsp;&nbsp;
                    <div id="publisherusernameTextBoxdiv"><asp:TextBox ID="publisherusernameTextBox" CssClass="publisherusernameTextBoxcss" runat="server" ></asp:TextBox></div>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="phonecontactLabeldiv"><asp:Label ID="phonecontactLabel" CssClass="phonecontactLabelcss" runat="server" Text="Phone:"></asp:Label></div>
                    &nbsp;&nbsp;
                    <div id="phonecontactTextBoxdiv"><asp:TextBox ID="phonecontactTextBox" CssClass="phonecontactTextBoxcss" runat="server"></asp:TextBox></div>
                </div>
                &nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div id="SubmitthepublishButtondiv"><asp:Button ID="SubmitthepublishButton" CssClass="SubmitthepublishButtoncss" runat="server" OnClick="SubmitthepublishButton_Click" Text="Submit" /></div>
                <br />
            </asp:View>
            <asp:View ID="View5" runat="server">
                
                &nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" SelectCommand="SELECT DISTINCT ru_city, COUNT(*) AS Expr1 FROM RecommendationForUsers WHERE (ru_user = @ru_userr) GROUP BY ru_city HAVING (COUNT(*) &gt; 1)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="User" Name="ru_userr" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" SelectCommand="SELECT DISTINCT ru_category FROM RecommendationForUsers WHERE (ru_user = @ru_userrr) ">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="User" Name="ru_userrr" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="CityyLabel" CssClass="CityyLabelcss" runat="server" Text="City"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="CategoryyLabel" CssClass="CategoryyLabelcss" runat="server" Text="Category"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="CityyDropDownList" CssClass="CityyDropDownListcss" AutoPostBack="True" EnableViewState="true" runat="server" DataSourceID="SqlDataSource3" DataTextField="ru_city" DataValueField="ru_city" Height="39px" Width="236px" OnSelectedIndexChanged="CityyDropDownList_SelectedIndexChanged">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="CategoryyDropDownList" CssClass="CategoryyDropDownListcss" AutoPostBack="True" EnableViewState="true" runat="server" Height="39px" Width="236px" DataSourceID="SqlDataSource4" DataTextField="ru_category" DataValueField="ru_category">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="LoadspecificsuggButton" CssClass="LoadspecificsuggButtoncss" runat="server" Height="39px" Text="Load posts" Width="181px" OnClick="LoadspecificsuggButton_Click" />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Repeater ID="SpecificSuggRepeater2" runat="server">
                    <ItemTemplate>
                            <div id="sstablediv2">
                                <div id="ssrealestatedetails2">
                                    <div id="ssimgggg">
                                        <img src="<%#Eval("ru_img1") %>" height="100" width="100"/>
                                    </div>
                                    <div id="ssimg222">
                                        <img src="<%#Eval("ru_img2") %>" height="100" width="100"/>
                                    </div>
                                    <div id="ssimg333">
                                        <img src="<%#Eval("ru_img3") %>" height="100" width="100"/>
                                    </div>
                                    <div id="ssimg444">
                                        <img src="<%#Eval("ru_img4") %>" height="100" width="100"/>
                                    </div>
                                    <div id="ssimg555">
                                        <img src="<%#Eval("ru_img5") %>" height="100" width="100"/>
                                    </div>
                                    <div id="ssimg666">
                                        <img src="<%#Eval("ru_img6") %>" height="100" width="100"/>
                                    </div>
                                    <div id="ssimg777">
                                        <img src="<%#Eval("ru_img7") %>" height="100" width="100"/>
                                    </div>
                                    <div id="ssimg888">
                                        <img src="<%#Eval("ru_img8") %>" height="100" width="100"/>
                                    </div>
                                    <div id="sscat2">
                                        Category: </td>
                                        <td><%#Eval("ru_category") %></td>
                                    </div>
                                    <div id="ssstat2">
                                        Status: </td>
                                        <td><%#Eval("ru_restatus") %></td>
                                    </div>
                                    <div id="ssagentname2">
                                        Agent name: </td>
                                        <td><%#Eval("ru_agentName") %></td>
                                    </div>
                                    <div id="ssdescr2">
                                        Description: </td>
                                        <td><%#Eval("ru_descr") %></td>
                                    </div>
                                    <div id="ssnoofrooms2">
                                        Number of rooms: </td>
                                        <td><%#Eval("ru_noofrooms") %></td>
                                    </div>
                                    <div id="ssarea2">
                                        Area(m2): </td>
                                        <td><%#Eval("ru_aream2") %></td>
                                    </div>
                                    <div id="ssstreetaddress2">
                                        Street address: </td>
                                        <td><%#Eval("ru_streetaddress") %></td>
                                    </div>
                                    <div id="sscity2">
                                        City: </td>
                                        <td><%#Eval("ru_city") %></td>
                                    </div>
                                    <div id="sspri2">
                                        Price: </td>
                                        <td><%#Eval("ru_price") %></td>
                                    </div>
                                    <div id="sscurr2">
                                        Currency: </td>
                                        <td><%#Eval("ru_currency") %></td>
                                    </div>
                                    <div id="ssownername2">
                                        Owner: </td>
                                        <td><%#Eval("ru_ownername") %></td>
                                    </div>
                                    <div id="sscontactphone2">
                                        Contact phone: </td>
                                        <td><%#Eval("ru_contactphone") %></td>
                                    </div>
                                </div>
                                <div id="ssblankspace"></div>
                            </div>
                        </ItemTemplate>
                </asp:Repeater>
            </asp:View>
        </asp:MultiView>
        </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
        <link rel="stylesheet" type="text/css" href="homestylesheet.css" runat="server" />
        <link rel="stylesheet" type="text/css" href="AdminListStyleSheet.css" runat="server" />
        <link rel="stylesheet" type="text/css" href="UserSuccessfullyPublishedStyleSheet.css" runat="server" />
        <link rel="stylesheet" type="text/css" href="UserStyleSheet.css" runat="server" />
        <link rel="stylesheet" type="text/css" href="AgentsPublishesStyleSheet.css" runat="server" />
    <style type="text/css">
        #TextArea1 {
            height: 68px;
            width: 340px;
        }
        #MessageContent {
            height: 44px;
            width: 410px;
        }
        .NohousesButtoncss {}
        .NoapartmentsButtoncss {
            margin-left: 0px;
        }
        .NobungalowsButtoncss {}
    </style>
</asp:Content>

