<%@ Page Title="Assigni Roles" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssingRoles.aspx.cs" Inherits="Insurance4You.Admin.AssingRoles" %>

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


                            <asp:GridView ID="PoliciesGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="PoliciesSource">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="Quote" HeaderText="Quote" SortExpression="Quote" />
                                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                    <asp:BoundField DataField="SecondName" HeaderText="SecondName" SortExpression="SecondName" />
                                    <asp:BoundField DataField="RegNumber" HeaderText="RegNumber" SortExpression="RegNumber" />
                                    <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                                    <asp:BoundField DataField="DOM" HeaderText="DOM" SortExpression="DOM" />
                                    <asp:BoundField DataField="Engine" HeaderText="Engine" SortExpression="Engine" />
                                    <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                                    <asp:BoundField DataField="AdditionalDriverID" HeaderText="AdditionalDriverID" SortExpression="AdditionalDriverID" />
                                    <asp:CheckBoxField DataField="Checked" HeaderText="Checked" SortExpression="Checked" />
                                    <asp:CheckBoxField DataField="Rejected" HeaderText="Rejected" SortExpression="Rejected" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="PoliciesSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="GetAllPolicies" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


                            <asp:SqlDataSource ID="UpdateStatusSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Policy] WHERE [Id] = @original_Id AND [Checked] = @original_Checked AND (([Rejected] = @original_Rejected) OR ([Rejected] IS NULL AND @original_Rejected IS NULL))" InsertCommand="INSERT INTO [Policy] ([Checked], [Rejected]) VALUES (@Checked, @Rejected)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Checked], [Rejected] FROM [Policy] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Policy] SET [Checked] = @Checked, [Rejected] = @Rejected WHERE [Id] = @original_Id AND [Checked] = @original_Checked AND (([Rejected] = @original_Rejected) OR ([Rejected] IS NULL AND @original_Rejected IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_Id" Type="Int32" />
                                    <asp:Parameter Name="original_Checked" Type="Boolean" />
                                    <asp:Parameter Name="original_Rejected" Type="Boolean" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Checked" Type="Boolean" />
                                    <asp:Parameter Name="Rejected" Type="Boolean" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="PoliciesGridView" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Checked" Type="Boolean" />
                                    <asp:Parameter Name="Rejected" Type="Boolean" />
                                    <asp:Parameter Name="original_Id" Type="Int32" />
                                    <asp:Parameter Name="original_Checked" Type="Boolean" />
                                    <asp:Parameter Name="original_Rejected" Type="Boolean" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="UpdateStatusGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="UpdateStatusSource">
                                <Columns>
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:CheckBoxField DataField="Checked" HeaderText="Checked" SortExpression="Checked" />
                                    <asp:CheckBoxField DataField="Rejected" HeaderText="Rejected" SortExpression="Rejected" />
                                </Columns>
                            </asp:GridView>


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
                        <br />
                        <br />

                    </div>
                </div>
            </div>
            <div>
            </div>
        </div>
    </div>
</asp:Content>
