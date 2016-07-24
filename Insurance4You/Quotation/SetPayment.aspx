<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SetPayment.aspx.cs" Inherits="Insurance4You.Quotation.SetPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Styles" runat="server">
    <link rel="stylesheet" href="../Content/SetPayment.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" id="quotation">
        <div class="row">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-11 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <div class="progr">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="steps">Step 3 of 3</div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-8 hidden-xs line">
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
                    <div class="panel-heading">
                        <h4 id="he">Your Pamyment Plan</h4>
                    </div>
                    <div class="panel-body">
                        <div class="panel-group">
                            <div class="row">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5 col-lg-offset-2 col-md-offset-2 col-sm-offset-2 col-xs-offset-2">
                                    <asp:Repeater ID="MonthsList" runat="server">
                                        <ItemTemplate>
                                            <h5>
                                                <asp:Literal ID="Literal1" runat="server" Text="<%# Container.DataItem %>"></asp:Literal>
                                            </h5>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5 rates">
                                    <asp:Repeater ID="RateList" runat="server">
                                        <ItemTemplate>
                                            <h5>
                                                <asp:Literal ID="Literal1" runat="server" Text="<%# Container.DataItem %>" ></asp:Literal>
                                            </h5>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                            <div class="panel-group">
                                <div class="row">
                                    <div class="text-center">
                                        <asp:Button ID="Button5" CssClass="btn btn-success btn-lg " runat="server" Text="Pay Now" OnClick="Button5_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
