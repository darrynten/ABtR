<%@ Page Title="Frequently Asked Questions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="AppBackToReality.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div style="float: left; padding-right: 15px">
    <h2><%: Title %>.</h2>
        <hr />
    <h3>See what others have already asked.</h3>
    
    <ul>
        <li><strong> How do I make an app?</strong>
            <ol>

            <br />
            <li> Click "Build" on the home screen.   </li>
            <li> Select a them for your application and provide a name. </li>
            <li> Select your screen template.  </li>
            <li> Uplaod any images and/or text needed by the developers for your application. </li>
            <li> If you would like add another screen - click "Add screen".  </li>
            <li> When sufficient screens are added, click "Checkout". </li>
            <li> Follow prompts for payment details. </li>
            <li> Receive email confirmation.</li>
            <li> Wait patiently for your customized application to be completed.</li>

            </ol>
                     
        </li><br />
        <li>
            <strong>How does checkout work?</strong>
            <br />
            Once you have selected all the appropriate screens and features, click on the cart icon.
            The cart will then list the estimated quote. Before we begin the development, you are required to pay the initial deposit fee.
            Following this, our team will have an indepth look at your requirements and give you a finalised quote before beginning the development process, maintaining continous communication with you.
        </li> <br />
        <li>
            <strong>How long does an app take to complete?</strong>
            <br />
            Roughly 3 weeks depending on volume of requests and complexity of custom design.

        </li>            <br />


         <li>
            <strong>What are the costs involved in making an app?</strong>
            <br />
            The different screen templates have different costs involved. Build your own app
             to view the cost that your customized design would amount to.
        </li>
    </ul>
    </div>
    <image src ="Pics/ipad.jpg" alt="Ipad" 
    <p></p>
</asp:Content>
