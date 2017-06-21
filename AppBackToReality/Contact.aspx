<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AppBackToReality.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %> Us</h2>
    <hr />
    <h3>Where you can find us</h3>
    <div class="mapouter" style="float:right">
        <div class="gmap_canvas">
            <iframe width="500" height="400" id="gmap_canvas" src="https://maps.google.com/maps?q=The Burg, Burg Road, Cape Town, South Africa, &t=&z=14&ie=UTF8&iwloc=&output=embed"></iframe>
            embed google map <a href="http://www.embedgooglemap.net">embedgooglemap.net</a></div>
        <style>
            .mapouter {
                overflow: hidden;
                height: 400px;
                width: 500px;
            }

            .gmap_canvas {
                background: none !important;
                height: 400px;
                width: 500px;
            }
        </style>
    </div>
    <address>
        2 Burg Road<br />
        Rondebosch<br />
        Cape Town<br />
        South Africa<br />

        <abbr title="Phone">P:</abbr>
        (021) 674 4486
    </address>
    
    <h3>Email Our Team!</h3>
    <address>
        <strong>Innovation Director:</strong>   <a href="mailto:radhickman@gmail.com">Rupert Hickman</a><br />
        <strong>Executive Director of Fun:</strong>   <a href="mailto:zackattack@gmail.com">Zack Zornitta</a><br />
        <strong>Chief Influence Officer:</strong> <a href="mailto:natashaoates1@gmail.com">Natasha Oates</a><br />
        <strong>Vice Principal of Java Functionality:</strong> <a href="mailto:fergus_dixon@gmail.com">Fergus Strangways-Dixon</a>
    </address>

    <br />
 
<script language="javascript">var sa_email_id = '85112-a04b8';var sa_sent_text = 'Thank you for contacting us. We will get back to you soon.';</script>
<div id="sa_contactdiv">
<form name=sa_htmlform style="margin:0px" onsubmit="contactEmail">
<table>
<tr><td>Name:<br><asp:TextBox ID="TextBox2" runat="server" required="true" Width="177px"></asp:TextBox></td></tr>
<tr><td>E-mail Address: <span style="color:#D70000">*</span><br><asp:TextBox ID="TextBox1" runat="server" required="true" Width="251px"></asp:TextBox></td></tr>
<tr><td>Subject: <span style="color:#D70000">*</span><br><asp:TextBox ID="TextBox3" runat="server" required="true" Width="174px"></asp:TextBox></td></tr>
<tr><td>Message: <span style="color:#D70000">*</span><br><asp:TextBox ID="TextBox4" BorderStyle="Groove" TextMode="MultiLine" ToolTip="Type your text here" runat="server" rows = 5 required="true" Height="78px" Width="255px"></asp:TextBox></td></tr>
<tr><td><asp:Button ID="Button1" class="btn btn-default" type ="submit" runat="server" OnClick="contactEmail" Text="Send" /></td></tr>
    
    
</table>
</form></div>
        <div class="socialmedia" style="padding-right:100px">
    <div class="fb-page" data-href="https://www.facebook.com/AppBackToReality/" data-tabs="timeline" data-width="500" data-height="100" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false"><blockquote cite="https://www.facebook.com/AppBackToReality/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/AppBackToReality/">App Back To Reality</a></blockquote></div>
     <br /><br />    <a class="twitter-follow-button"
  href="https://twitter.com/AppBack2Reality">
Follow @AppBack2Reality</a>
 <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.9";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
   
    <script>window.twttr = (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0],
    t = window.twttr || {};
  if (d.getElementById(id)) return t;
  js = d.createElement(s);
  js.id = id;
  js.src = "https://platform.twitter.com/widgets.js";
  fjs.parentNode.insertBefore(js, fjs);

  t._e = [];
  t.ready = function(f) {
    t._e.push(f);
  };

  return t;
}(document, "script", "twitter-wjs"));</script>
        </div>
</asp:Content>
