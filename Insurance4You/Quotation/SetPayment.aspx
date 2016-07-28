<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SetPayment.aspx.cs" Inherits="Insurance4You.Quotation.SetPayment" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Styles" runat="server">
    <link rel="stylesheet" href="../Content/SetPayment.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Scripts/jquery.validate.js" />
        </Scripts>
    </asp:ScriptManagerProxy>


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
                                                <asp:Literal ID="Literal1" runat="server" Text="<%# Container.DataItem %>"></asp:Literal>€
                                            </h5>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                            <div class="panel-group">
                                <div class="row">
                                    <div class="text-center">
                                        <asp:Button Text="Proceed to payment" runat="server" CssClass="btn btn-success btn-lg" ID="ProceedBtn" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <asp:Panel ID="Panel1" runat="server" Width="600px" Height="550px" Style="background: white">
                <div id="payment-panel" class="panel panel-default">
                    <div class="panel-heading">
                        <h4>Credit Card Details</h4>
                    </div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label for="CardIcons" class="col-sm-5 control-label">accepted cards</label>
                                <img id="CardIcons" src="../Images/credit-card-icons.png" />
                            </div>
                            <div class="form-group">
                                <label for="Name" class="col-sm-5 control-label">name on credit card</label>
                                <div class="col-sm-7">
                                    <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="CardNumber" class="col-sm-5 control-label">card number</label>
                                <div class="col-sm-7">
                                    <asp:TextBox ID="CardNumber" runat="server" PlaceHolder="4242424242424242" Value="4242424242424242" Text="4242424242424242"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="ExpiryDate" class="col-sm-5 control-label">expiry date</label>
                                <div class="col-sm-7">
                                    <div class="date col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="ExpiryMonth">
                                            <asp:ListItem Value="">--</asp:ListItem>
                                            <asp:ListItem Value="1">January</asp:ListItem>
                                            <asp:ListItem Value="2">February</asp:ListItem>
                                            <asp:ListItem Value="3">March</asp:ListItem>
                                            <asp:ListItem Value="4">April</asp:ListItem>
                                            <asp:ListItem Value="5">May</asp:ListItem>
                                            <asp:ListItem Value="6">June</asp:ListItem>
                                            <asp:ListItem Value="7">July</asp:ListItem>
                                            <asp:ListItem Value="8">August</asp:ListItem>
                                            <asp:ListItem Value="9">September</asp:ListItem>
                                            <asp:ListItem Value="10">October</asp:ListItem>
                                            <asp:ListItem Value="11">November</asp:ListItem>
                                            <asp:ListItem Value="12">December</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="date col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="ExpiryYear">
                                            <asp:ListItem Value="">--</asp:ListItem>
                                            <asp:ListItem>2016</asp:ListItem>
                                            <asp:ListItem>2017</asp:ListItem>
                                            <asp:ListItem>2018</asp:ListItem>
                                            <asp:ListItem>2019</asp:ListItem>
                                            <asp:ListItem>2020</asp:ListItem>
                                            <asp:ListItem>2021</asp:ListItem>
                                            <asp:ListItem>2022</asp:ListItem>
                                            <asp:ListItem>2023</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="CVN" class="col-sm-5 control-label">Card Verification Number</label>
                                <div class="col-sm-7">
                                    <asp:TextBox ID="CVN" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-9 col-sm-offset-3">
                                    <asp:Button ID="Button5" CssClass="btn btn-success" runat="server" Text="Pay" OnClick="Button5_Click" />
                                    <asp:Button Text="Cancel" runat="server" CssClass="btn btn-default" ID="CancelBtn" />
                                </div>
                            </div>
                            <div class="from-group">
                                <img id="stripe-logo" src="../Images/stripe_logo.png" />
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <ajax:ModalPopupExtender ID="ModalPopupExtender1" BackgroundCssClass="background-modal" TargetControlID="ProceedBtn" runat="server" PopupControlID="Panel1" CancelControlID="CancelBtn"></ajax:ModalPopupExtender>

           
        </div>
    </div>
    <script>
         $(function () {
            var x = $('#form');
            $(x).validate({
                rules: {
                    '<%= Name.UniqueID %>': { required: true },
                    '<%= CardNumber.UniqueID %>': { required: true },
                    '<%= ExpiryYear.UniqueID %>': { required: true },
                    '<%= ExpiryMonth.UniqueID %>': { required: true },
                    
                },
                  messages: {
                    '<%= Name.UniqueID %>': "*",
                    '<%= CardNumber.UniqueID %>': "*",
                    '<%= ExpiryYear.UniqueID %>': "*",
                    '<%= ExpiryMonth.UniqueID %>': "*"
                },
                errorPlacement: function (error, element) {
                    element.after(error);
                    error.css("color", "red");
                    error.css('position', 'relative');
                },

           });
        });
        //function preventBack() { window.history.forward(); }
        //setTimeout("preventBack()", 0);
        //window.onunload = function () { null };
    </script>
</asp:Content>
