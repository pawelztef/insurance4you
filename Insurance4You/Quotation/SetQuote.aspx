<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SetQuote.aspx.cs" Inherits="Insurance4You.Quotation.SetQuote" %>

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
                    <div class="alert">
                        <p>
                            <asp:Label ID="Fedback1" runat="server" Text="Your quote"></asp:Label>
                        <p />
                    </div>

                    <div class="panel-body">
                        <div class="row" id="1">

                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5 leftFedback">
                                <h3>Your quote is: </h3>
                            </div>
                            
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 rightFedback">
                                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="label"></asp:Label>
                            </div>

                        </div>
                        <div class="row" id="2">

                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 leftFedback">
                                <h4>You can set up your payment now</h4>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 rightFedback">
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

        $(function () {

            setContent();

        });

        function setContent() {

            var x = " <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12 leftFedback'>" +
                "<h4>Unfortunately we can't provide you quote</h4></br>" +
                "<h6>If you have any quetsions call to us:</h6> <span class='lead'>0891227227</span></div>";

            if ($('#MainContent_HiddenField1').val() == "true") {

                $("#1").css('display','none');
                $("#2").css('display','none');
                $(".panel-body").append(x);

            } else {
                $("#1").css('display', 'visible');
                $("#2").css('display', 'visible');
                
            }
        }


    </script>
</asp:Content>
