<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Insurance4You._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="/Images/header1.jpg" alt="first">
                        <div class="carousel-caption">
                            <h3>One</h3>
                        </div>
                    </div>
                    <div class="item">
                        <img src="/Images/header2.jpg" alt="second">
                        <div class="carousel-caption">
                            <h3>Two</h3>
                        </div>
                    </div>
                    <div class="item">
                        <img src="/Images/header3.jpg" alt="third">
                        <div class="carousel-caption">
                            <h3>Three</h3>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>

            </div>

        </div>
    </div>
    <div class="container def-page-info">
        <div class="row">
            <div class="col-md-5">
                <div class="row">
                    <div class="well well-sm">Customer <b>Care Center</b></div>
                </div>
                <div class="row customer-center-body">
                    <div class="col-md-6">
                        <a href="#" class="thumbnail">
                            <div class="circle">
                                <i class="fa fa-car" aria-hidden="true"></i>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="#" class="thumbnail">
                            <div class="circle">
                                <i class="fa fa-heart" aria-hidden="true"></i>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="#" class="thumbnail">
                            <div class="circle">
                                <i class="fa fa-plane" aria-hidden="true"></i>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="#" class="thumbnail">
                            <div class="circle">
                                <i class="fa fa-users" aria-hidden="true"></i>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="well well-sm">Latest <b>News</b></div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="thumbnail">
                            <img src="/Images/thumbnail2.jpg" width="100px">
                            <div class="caption">
                                <h5 id="head1">Best Car<br />
                                    For Newbie.</h5>
                                <p>
                                    Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                                <a href="#">read more <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="thumbnail">
                            <img src="/Images/thumbnail1.jpg" width="100px">
                            <div class="caption">
                                <h5 id="head2">How can I lower insurance costs?</h5>
                                <p>
                                    Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                                <a href="#">read more <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
