<%@ Page Title="Assign Roles" Language="C#" MasterPageFile="AdminMaster.Master" AutoEventWireup="true" CodeBehind="AssingRoles.aspx.cs" Inherits="Insurance4You.Admin.AssingRoles" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<asp:Content ID="Styles" ContentPlaceHolderID="Styles" runat="server">
    <link rel="stylesheet" href="../Content/AssignRoles.css" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Scripts/jquery.validate.js" />
        </Scripts>
    </asp:ScriptManagerProxy>


    <div class="row main">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-11 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
            <div class="panel pane-default">
                <div class="panel-heading">
                    <b>Welcome to Owner</b>
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#Premissions" aria-controls="Premissions" role="tab" data-toggle="tab">Grant Premisions</a></li>
                        <li role="presentation"><a href="#ManageRoles" aria-controls="ManageRoles" role="tab" data-toggle="tab">Manage Roles</a></li>
                        <li role="presentation"><a href="#CreateUser" aria-controls="CreateUser" role="tab" data-toggle="tab">Create Users</a></li>

                    </ul>
                    <asp:Label ID="FeedbackLabel1" runat="server"></asp:Label>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="Premissions">
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="well well-lg">
                                        <div class="form-horizontal">
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <label for="UserList1" id="selectUserLabel" class="col-md-5 control-label">Select User</label>
                                                        <asp:DropDownList ID="UserList1" runat="server" AutoPostBack="true" DataTextField="UserName" DataValueField="UserName" OnSelectedIndexChanged="UserList1_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col-md-6 repeater">
                                                        <asp:Repeater ID="UserRoleList" runat="server">
                                                            <ItemTemplate>
                                                                <asp:CheckBox runat="server" ID="RoleCheckBox" AutoPostBack="true" OnCheckedChanged="RoleCheckBox_CheckChanged" Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>' />
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane " id="ManageRoles">
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="row">
                                        <div class="well well-lg">
                                            <div class="form-horizontal">
                                                <div class="form-group">
                                                    <div class="col-md-5 col-md-offset-1 roles">
                                                        <asp:GridView ID="RoleList" runat="server" AutoGenerateColumns="False" OnRowDeleting="RoleList_RowDeleting">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Available Roles">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" ID="RoleNameLabel" Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>' />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:CommandField DeleteText="Delete" ShowDeleteButton="True" />
                                                            </Columns>
                                                        </asp:GridView>
                                                    </div>

                                                    <div class="col-md-6 newRoleInput">
                                                        <label for="RoleBox1" class="control-label">New Role</label>
                                                        <asp:TextBox ID="RoleBox1" runat="server"></asp:TextBox>
                                                        <div class="form-group">
                                                            <div class="col-sm-offset-2 col-sm-10">
                                                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" OnClick="Button1_Click" Text="Create Role" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="CreateUser">
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="well well-lg">
                                        <div class="form-horizontal">
                                            <div class="form-group">
                                                <label for="NameTextBox" class="col-sm-2 control-label">Frist Name</label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="SurnameTextBox" class="col-sm-2 control-label">Last Name</label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="SurnameTextBox" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="EmailTextBox" class="col-sm-2 control-label">Email</label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Create User" OnClick="Button2_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
