<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AppBackToReality._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item">
                    <img src="pics/pens.jpg" alt="Pens">
                    
                </div>
                <div class="item active">
                    <img src="pics/123.png" alt="Phones">
                    <div class="carousel-content">
                        <h1>AppBackToReality.</h1>
                        <h4>Custom. Concise. Complete.</h4>
                    </div>
                </div>

                <div class="item">
                    <img src="pics/blackwhite.jpg" alt="Design">
                </div>

                
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div class="col-md-4">
            <h2>Design an App!</h2>
            <p>
                App Back to Reality strives to provide simple and accessible mobile app development services to everyone.
            </p>
            <p>
                <a class="btn btn-default" href="Shop">Get started. &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Portfolio</h2>
            <p>
                Check out our past project, both for clients and NGOs as part of our corporate social responsibility.
            </p>
            <p>
                <a class="btn btn-default" href="About.aspx">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
