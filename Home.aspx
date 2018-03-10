<%@ Page EnableEventValidation="false" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
    <div id="homemaindiv" style="height: 1328px; width: 1328px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <div id="contactaboutuslogo">
            <div id="LogoOficialImagediv">
                <asp:Image ID="LogoOficialImage" CssClass="LogoOficialImagecss" ImageUrl="~/images/websitelogo.png" runat="server" />
            </div>
            <div id="aboutuscontactbuttons">
                <asp:Button ID="aboutusButton1" CssClass="aboutusButton1css" runat="server" Text="About Us" OnClick="AboutUs_Click" />
                <asp:Button ID="contactButton2" CssClass="contactButton2css" runat="server" Text="Contact" OnClick="ContactUs_Click" />
            </div>
        </div>
        <br />
        <div id="homeupmanu">&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="StatusofUserLogedInLabel" CssClass="StatusofUserLogedInLabel112" runat="server"></asp:Label>
        <asp:LinkButton ID="NameofUserLogedInLinkButton" CssClass="NameofUserLogedInLinkButton112" runat="server" OnClick="NameofUserLogedInLinkButton_Click"></asp:LinkButton>
            
            <div id="divFacebookImageButton1"><asp:ImageButton CssClass="FacebookImageButton1css" ID="FacebookImageButton1" ImageUrl="~/socialmedia/facebook.png" OnClick="takemetofacebook"  runat="server" /></div>
            <div id="divInstaImageButton1"><asp:ImageButton CssClass="InstaImageButton1css" ID="InstaImageButton1" ImageUrl="~/socialmedia/insta.png" OnClick="takemetoinsta" runat="server" /></div>
            <div id="divTwitterImageButton"><asp:ImageButton CssClass="TwitterImageButton1css" ID="TwitterImageButton" ImageUrl="~/socialmedia/twitter.png" OnClick="takemetotwitter" runat="server" /></div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <div id="regloginlogout"><asp:Button ID="LogOutButton" CssClass="LogOutButton112" runat="server" OnClick="LogOutButton_Click" Text="Log out" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="LogInButton" CssClass="LogInButton112" runat="server" OnClick="LogInButton_Click" Text="Log in" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Button ID="BtnRegistration" CssClass="BtnRegistrationn112" runat="server" OnClick="BtnRegistration_Click" Text="Registration" /></div>
        </div>

        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<div id="divLogoImage1"><asp:Image ID="LogoImage1" CssClass="LogoImage1223" ImageUrl="images/websitelogo.png" runat="server" /></div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

        <div id="searchboxdiv" style="width: 868px; height: 134px; margin-left: 200px;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label CssClass="CategoryLabell" ID="CategoryLabel" runat="server" Text="Category:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label CssClass="StatusLabell" ID="StatusLabel" runat="server" Text="For sale/For rent:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label CssClass="PricefromLabell" ID="PricefromLabel" runat="server" Text="Price from:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label CssClass="PricetoLabell" ID="PricetoLabel" runat="server" Text="Price to:"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList CssClass="CategoryDropDownListt" ID="CategoryDropDownList" runat="server" Height="28px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="157px">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>house</asp:ListItem>
            <asp:ListItem>apartment</asp:ListItem>
            <asp:ListItem>camp trailer</asp:ListItem>
            <asp:ListItem>bungalow</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList CssClass="StatusDropDownListt" ID="StatusDropDownList" runat="server" Height="30px" Width="149px">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>for rent</asp:ListItem>
            <asp:ListItem>buying</asp:ListItem>
            <asp:ListItem>renting</asp:ListItem>
            <asp:ListItem>for sale</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList CssClass="PriceFromDropDownListt" ID="PriceFromDropDownList" runat="server" Height="28px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="115px">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>500</asp:ListItem>
            <asp:ListItem>1000</asp:ListItem>
            <asp:ListItem>5000</asp:ListItem>
            <asp:ListItem>10000</asp:ListItem>
            <asp:ListItem>50000</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList CssClass="PricetoDropDownListt" ID="PricetoDropDownList" runat="server" Height="26px" Width="144px">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>100000</asp:ListItem>
            <asp:ListItem>500000</asp:ListItem>
            <asp:ListItem>800000</asp:ListItem>
            <asp:ListItem>1000000</asp:ListItem>
            <asp:ListItem>5000000</asp:ListItem>
            <asp:ListItem>900000000</asp:ListItem>
            <asp:ListItem>1000</asp:ListItem>
            <asp:ListItem>5000</asp:ListItem>
            <asp:ListItem>10000</asp:ListItem>
            <asp:ListItem>50000</asp:ListItem>
        </asp:DropDownList>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label CssClass="AreaFromLabell" ID="AreaFromLabel" runat="server" Text="Area from(m2):"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label CssClass="AreatoLabell" ID="AreatoLabel" runat="server" Text="Area to(m2):"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label CssClass="CityLabell" ID="CityLabel" runat="server" Text="City:"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList CssClass="AreaFromDropDownListt" ID="AreaFromDropDownList" runat="server" Height="30px" Width="126px">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>50</asp:ListItem>
            <asp:ListItem>100</asp:ListItem>
            <asp:ListItem>500</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList CssClass="AreatoDropDownListt" ID="AreatoDropDownList" runat="server" Height="30px" Width="134px">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>50</asp:ListItem>
            <asp:ListItem>100</asp:ListItem>
            <asp:ListItem>500</asp:ListItem>
            <asp:ListItem>1000</asp:ListItem>
            <asp:ListItem>1200</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>5000</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList CssClass="CityDropDownListt" ID="CityDropDownList" runat="server" Height="30px" Width="215px">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>Demir Kapija</asp:ListItem>
            <asp:ListItem>Kavadarci</asp:ListItem>
            <asp:ListItem>Negotino</asp:ListItem>
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
            <asp:ListItem>Demir Hisar</asp:ListItem>
            <asp:ListItem>Bitola</asp:ListItem>
            <asp:ListItem>Krushevo</asp:ListItem>
            <asp:ListItem>Prilep</asp:ListItem>
            <asp:ListItem>Resen</asp:ListItem>
            <asp:ListItem>Gostivar</asp:ListItem>
            <asp:ListItem>Tetovo</asp:ListItem>
            <asp:ListItem>Kratovo</asp:ListItem>
            <asp:ListItem>Kriva Palanka</asp:ListItem>
            <asp:ListItem>Kumanovo</asp:ListItem>
            <asp:ListItem>Skopje</asp:ListItem>
            <asp:ListItem>Veles</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SearchRealEstateButton" CssClass="SearchRealEstateButtonnn11" runat="server" Height="30px" OnClick="SearchRealEstateButton_Click" Text="Search" Width="146px" />
        </div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div id="slideshowdiv">
            <div class="mySlides fade">
                <img src="homeslideshowimages/one.jpg"/>
            </div>

            <div class="mySlides fade">
                <img src="homeslideshowimages/two.jpg"/>
            </div>

            <div class="mySlides fade">
                <img src="homeslideshowimages/three.jpg"/>
            </div>

            <div class="mySlides fade">
                <img src="homeslideshowimages/four.jpg"/>
            </div>

            <div class="mySlides fade">
                <img src="homeslideshowimages/five.jpg"/>
            </div>

            <div class="mySlides fade">
                <img src="homeslideshowimages/six.jpg"/>
            </div>
        </div>
        <br />
        <div id="dotsforslideshow">
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
        </div>
        <br />
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <div id="tablediv">
                    <div id="realestatedetails">
                        <div id="imgg"><img src="<%#Eval("img1") %>" height="200" width="400"/></div>
                        <div id="cat">Category: </td><td><%#Eval("category") %></div>                   
                        <div id="pri">Price: </td><td><%#Eval("price") %></div>
                        <div id="curr">Currency: </td><td><%#Eval("currency") %></div>
                        <div id="stat">Status: </td><td><%#Eval("restatus") %></div>
                        <div id="area">Area(m2): </td><td><%#Eval("aream2") %></div>
                        <div id="city">City: </td><td><%#Eval("city") %></div>
                        <div id="readmorebuttondiv"><asp:LinkButton CssClass="readmoreLinkButtonn" ID="readmoreLinkButton" CommandArgument='<%#Eval("id")%>' OnClick="Clicktoseedetails" runat="server">Details >></asp:LinkButton></div>
                        <div id="contactagent"><asp:LinkButton CssClass="ContactAgentLinkButton11" ID="ContactAgentLinkButton1" runat="server" OnClick="ContactAgent_OnClick">Contact_agent</asp:LinkButton></div>
                        <div id="likerealestatediv"><asp:LinkButton ID="LikeLinkButton" CssClass="likerealestatecss" CommandArgument='<%#Eval("id")%>' OnClick="Ilikethisrealestate_OnClick" runat="server">Like</asp:LinkButton></div>
                    </div>
                    <div id="blankspace"></div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        
    </div>

</asp:Content>
