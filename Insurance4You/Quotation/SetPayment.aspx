<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SetPayment.aspx.cs" Inherits="Insurance4You.Quotation.SetPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Styles" runat="server">
     <link rel="stylesheet" href="../Content/SetQuote.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" id="quotation">
        <div class="row">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-11 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <div class="progr">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="steps">Step 2 of 3</div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-8 line">
                            <div class="icons-wrapper">
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                    <p><i class="fa fa-user fa-3x" aria-hidden="true"></i></p>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                    <p><i class="fa fa-thumbs-up fa-3x" id="x" aria-hidden="true"></i></p>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                    <p><i class="fa fa-eur fa-3x" aria-hidden="true"></i></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-11 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading"></div>
                    <div class="panel-body">
                        <asp:Label ID="Label1" runat="server" Text="nothing yet"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
