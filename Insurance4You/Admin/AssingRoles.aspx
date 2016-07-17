<%@ Page Title="Assigni Roles" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssingRoles.aspx.cs" Inherits="Insurance4You.Admin.AssingRoles" %>

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
                        <li role="presentation" class="active"><a href="#Policies" aria-controls="Policies" role="tab" data-toggle="tab">Policies</a></li>
                        <li role="presentation"><a href="#ManageRoles" aria-controls="ManageRoles" role="tab" data-toggle="tab">Manage Roles</a></li>
                        <li role="presentation"><a href="#Messages" aria-controls="Messages" role="tab" data-toggle="tab">Messages</a></li>
                        <li role="presentation"><a href="#Settings" aria-controls="Settings" role="tab" data-toggle="tab">Settings</a></li>
                    </ul>
                    <asp:Label ID="FeedbackLabel1" runat="server"></asp:Label>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="Policies">


                            <h4>Find Driver</h4>

                            <asp:TextBox ID="FindDriverTextBox" runat="server"></asp:TextBox><asp:Button ID="FindDriverButton" runat="server" Text="Button" />
                            <asp:SqlDataSource ID="DriversSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Title], [Id], [FirstName], [SecondName], [SiteUserId] FROM [Driver] WHERE ([PolicyId] = @PolicyId)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="FindDriverTextBox" Name="PolicyId" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>





                            <h4>Policies</h4>

                          
                            <asp:GridView ID="GD1" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" />
                                    <asp:BoundField DataField="FirstName" HeaderText="Frist Name" />
                                    <asp:BoundField DataField="SecondName" HeaderText="Second Name" />
                                    <asp:BoundField DataField="Checked" HeaderText="Checked" />
                                    <asp:BoundField DataField="Rejected" HeaderText="Rejected" />
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageB" runat="server" Height="24px" ImageUrl="~/Images/pencil.png" Width="25px" OnClick="Image_Click" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                            <asp:Button ID="ButtonShowPopUp" runat="server" Style="display: none;" />
                            <asp:Panel ID="Panel1" runat="server" Width="300px" Height="200px" Style="display: none; border: 1px solid #222222; background: white">
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style10" colspan="3">&nbsp;Update Status&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>Policy Id</td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style23"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">Checked</td>
                                        <td class="auto-style9">
                                            <asp:CheckBox ID="CheckBoxChecked" runat="server" />
                                        </td>
                                        <td class="auto-style22"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">Rejected</td>
                                        <td class="auto-style17">
                                            <asp:CheckBox ID="CheckBoxRejected" runat="server" />
                                        </td>
                                        <td class="auto-style18"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19"></td>
                                        <td class="auto-style20">
                                            <asp:Button ID="ModalUpdateButton" runat="server" OnClick="Button1_Click" Text="Update" />
                                            <asp:Button ID="ModalCancelButton" runat="server" Text="Cancel" />
                                        </td>
                                        <td class="auto-style21"></td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <ajax:ModalPopupExtender ID="ModalPopupExtender1" BackgroundCssClass="modalBackground" TargetControlID="ButtonShowPopUp" runat="server" PopupControlID="Panel1" CancelControlID="ModalCancelButton"></ajax:ModalPopupExtender>




                            <h4>Driver</h4>

                            <asp:GridView ID="GridView1" runat="server" DataKeyNames="SiteUserId" DataSourceID="DriversSource">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                            </asp:GridView>

                            <asp:GridView ID="DriverDocumments" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">

                                <Columns>

                                    <asp:TemplateField HeaderText="Your Documents">
                                        <ItemTemplate>
                                            <i class="fa fa-file-text"></i>
                                            <asp:LinkButton ID="LinkButton1" OnClick="OpenDocument" runat="server" Text='<%# Eval("DocumentName") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="GetDocumentsByUser" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>












                        <div role="tabpanel" class="tab-pane " id="ManageRoles">
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
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-6 col-md-offset-4 roles">
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
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-offset-3 newRoleInput">
                                                <label for="RoleBox1" class="control-label">New Role</label>
                                                <asp:TextBox ID="RoleBox1" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-4 col-sm-10">
                                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" OnClick="Button1_Click" Text="Create Role" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
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
                        <div role="tabpanel" class="tab-pane" id="Messages">Messages...</div>
                        <div role="tabpanel" class="tab-pane" id="Settings">Settings...</div>
                    </div>
                </div>
            </div>
            <div>
            </div>
        </div>
    </div>
</asp:Content>
