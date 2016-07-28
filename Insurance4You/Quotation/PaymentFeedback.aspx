<%@ Page Title="Payment Feedback" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaymentFeedback.aspx.cs" Inherits="Insurance4You.Quotation.PaymentFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Styles" runat="server">
    <link rel="stylesheet" href="../Content/PaymentFeedback.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container payment-feedback">
        <div class="row">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-11 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 id="feedback-header">
                            <asp:Label ID="FeedbackHeader" runat="server" Text="Success!"></asp:Label>
                        </h4>
                    </div>
                    <div class="panel-body">
                        <div class="panel-group">
                            <asp:Label ID="FeedbackBody" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="AgreementLabel" runat="server" Text="You can download your agreement"></asp:Label><asp:LinkButton ID="LinkBtn1" runat="server" OnClick="LinkBtn1_Click">here</asp:LinkButton><br />
                            <asp:Label ID="UploadLabel" runat="server" Text="For upload necessary documents click"></asp:Label><asp:LinkButton ID="LinkBtn2" runat="server" PostBackUrl="~/UserPages/ManageDocuments.aspx">here</asp:LinkButton><br />
                        </div>
                    <asp:Button ID="CancelBtn" runat="server" CssClass="btn btn-default pull-right" Text="Home" OnClick="CancelBtn_Click" />
                    <asp:Button ID="GoBackBtn" runat="server" CssClass="btn btn-success pull-right" Text="Go Back" OnClick="GoBackBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
