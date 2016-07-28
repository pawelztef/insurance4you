<%@ Page Title="Get Quote" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Refusal.aspx.cs" Inherits="Insurance4You.Quotation.Refusal" %>

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
                        <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12 leftFedback'>
                            <h4>Unfortunately we can't provide you quote</h4>
                            <br />
                            <h6>If you have any quetsions call to us:</h6>
                            <span class='lead'>0891227227</span>
                            <asp:Button ID="Button5" CssClass="btn btn-success btn-lg pull-right" runat="server" Text="Main Page" PostBackUrl="~/Default.aspx" />
                        </div>
                   </div>
                  
                </div>
            </div>
        </div>


        <script>
        </script>
    </div>
</asp:Content>
