<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageDocuments.aspx.cs" Inherits="Insurance4You.UserPages.ManageDocuments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Remove those  after styling -->
    <br>
    <br />
    <br />
    <br>
    <div class="row">
        <div class="container">
            <div class="jumbotron">
                <asp:Label Text="Upload Your Documents Here" runat="server"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" /><asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="jumbotron">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id">
                    <Columns>
                        <asp:TemplateField HeaderText="Your Documents:">
                            <ItemTemplate>
                                <i class="fa fa-file-text"></i>
                                <asp:LinkButton ID="LinkButton1" OnClick="OpenDocument" runat="server" Text='<%# Eval("DocumentName") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
