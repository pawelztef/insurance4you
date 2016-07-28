<%@ Page Title="Plan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SetQuote.aspx.cs" Inherits="Insurance4You.Quotation.SetQuote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Styles" runat="server">
    <link rel="stylesheet" href="../Content/SetQuote.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Scripts/SetQuote.js" />
        </Scripts>
    </asp:ScriptManagerProxy>

    <div class="container" id="quotation">
        <div class="row">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-11 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <div class="progr">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-5 col-xs-12">
                            <div class="steps">Step 2 of 3</div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6 hidden-xs line">
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
                    <div class="alert">
                        <p>
                            <asp:Label ID="Fedback1" runat="server" Text="Your quote"></asp:Label>
                        <p />
                    </div>

                    <div class="panel-body">
                        <div class="row" id="1">

                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-10 leftFedback">
                                <h3>Your quote is: </h3>
                            </div>
                            
                            <div class="col-lg-6 col-md-5 col-sm-5 col-md-offset-1 col-xs-10 rightFedback">
                                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="label"></asp:Label>
                            </div>

                        </div>
                        <div class="row" id="2">

                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-10 leftFedback">
                                <h5>You can set up your payment now</h5>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-10 rightFedback">
                                <asp:Button ID="PaymentButton" runat="server" CssClass="btn btn-success btn-lg" Text="Set Payment" OnClick="PaymentButton_Click" PostBackUrl="~/Quotation/SetPayment.aspx" />
                            </div>

                        </div>
                        <asp:HiddenField ID="HiddenField1" Value="true" runat="server" />
                        <asp:HiddenField ID="HiddenField2" Value="true" runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
    </script>
</asp:Content>
