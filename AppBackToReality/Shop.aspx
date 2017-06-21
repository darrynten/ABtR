<%@ Page Title="Shop" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Shop.aspx.cs" Inherits="AppBackToReality.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />

    <h2>Design Your App!</h2>
    <hr />
    <div style="overflow:auto;">
        <div style="float: right">
            <asp:Image ID="Image1" runat="server" imageUrl="Pics/appdesign.jpg" Width="400" Height="250"/>
        </div>
        <h3>The steps</h3>
        <div style="float: left; overflow: auto;">
            <ol>
                <li>Select your App's <strong>name </strong>and <strong>theme colours</strong> below, then click continue.</li>
                <li>Select the <strong>screen templates</strong> for your app, and <strong>upload any content</strong> needed.</li>
                <li>Add any additional instructions to the bottom of the text box</li>
                <li>If you would like to <strong>add another screen</strong>, click the appropriate button</li>
                <li>If you are finished, select the <strong>'submit and checkout'</strong> option.</li>
                <li>Follow the checkout prompts!</li>
            </ol>
        </div>
        
    </div>
    <hr />

    <div class="form-group">
        <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label" Text="Name Your App:" Font-Size="Larger"></asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="Name" CssClass="form-control" placeholder="Required" ToolTip="Required" />

            <asp:RequiredFieldValidator runat="server" ControlToValidate="Name"
                CssClass="text-danger" ErrorMessage="***The name field is required***" />
        </div>
    </div>

    <br />


    <div class="form-group">
        <h3>Pick your theme's colors:</h3>
        <div style="border: groove; padding: 8px; float: left;">
            <asp:Label ID="Label2" runat="server" Text="Primary theme:"></asp:Label>
            <br />
            <form>
                <input type="color" name="themecolor" value="#ff0000">
            </form>
        </div>

        <div style="border: groove; padding: 8px; float: left;">
            <asp:Label ID="Label3" runat="server" Text="Accent color:"></asp:Label>
            <form>
                <input type="color" name="accentcolor" value="#0000ff">
            </form>
        </div>

        <div style="border: groove; padding: 8px; float: left;">
            <asp:Label ID="Label4" runat="server" Text="Background color:"></asp:Label>
            <form>
                <input type="color" name="backcolor" value="#006600">
            </form>
        </div>

        <div style="border: groove; padding: 8px; float: left;">
            <asp:Label ID="Label5" runat="server" Text="Text color:"></asp:Label>
            <form>
                <input type="color" name="textcolor" value="#ffffff">
            </form>
        </div>

        <div style="padding-top: 15px">
            <asp:Button ID="Button2" runat="server" Text="Continue >>" OnClick="shopButton_Click" />
        </div>
    </div>
    <br />



</asp:Content>
