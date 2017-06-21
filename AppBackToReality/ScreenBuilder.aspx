<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ScreenBuilder.aspx.cs" Inherits="AppBackToReality.ScreenBuilder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div>
            <h2>Welcome to the App Builder!</h2>
            <h3>Pick the templates for your screens below.</h3>


            <p>Use the the controls to select your desired screen, don't forget to speicfy your screen number!</p>
            <p>You can see your previous screens in the shopping cart</p>

        </div>
        <br />

        <div style="overflow: auto">

            <div class="col-md-4" style="float: left">
                <h3>Templates</h3>
                <hr />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataMember="Screen" DataTextField="ScreenName" ItemType="AppBackToReality.Models.Screen"
                    SelectMethod="GetScreens" AutoPostBack="true"  DataValueField="ImagePath" OnSelectedIndexChanged="SelectionChanged" OnTextChanged="SelectionChanged">
                </asp:RadioButtonList>

            </div>
            <div style="float: right" class="">

                <div style="float: right;">
                    &nbsp;<asp:Image ID="Image1" runat="server" Width="250" Height="500" ImageUrl="~/Templates/plainText.png" AlternateText="*Please select a template" BackColor="#999999" />
                </div>
            </div>
        </div>
    </div>
    <div style="overflow: auto; float: left">
        <h3>Upload your resources for the screen</h3>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <hr />
        <p><strong>Add the text required for text sections, along with any other things you feel should be specified for the screen</strong></p>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1"
                CssClass="text-danger" ErrorMessage="****The field below is required****" />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Groove" TextMode="MultiLine" ToolTip="Type your text here" Height="500px" Width="750px" placeholder="Please type your text and specifications here"></asp:TextBox>
        <br />

        <div style="float: left; overflow: auto; padding-top: 10px">
            <asp:Button runat="server" Text="Add another screen" BorderStyle="Solid" BorderColor="#BC243C" BackColor="White" Width="200px" Height="60" Font-Bold="True" Font-Overline="False" Font-Size="Medium" OnClick="Unnamed1_Click" />
            <br />
            <br />
            <br />
        </div>
        <div style="overflow: auto; padding-top: 10px">

            <asp:Button runat="server" Text="Submit and checkout" BorderStyle="Solid" BorderColor="#004B87" BackColor="#CCFFFF" Width="200px" Height="60" Font-Bold="True" Font-Overline="False" Font-Size="Medium" OnClick="Unnamed2_Click" />

            <br />
            <br />
            <br />
        </div>
    </div>

    <br />
</asp:Content>
