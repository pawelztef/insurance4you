<%@ Page Title="Assigni Roles" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssingRoles.aspx.cs" Inherits="Insurance4You.Admin.AssingRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <b>Welcome to Owner</b>
        </div>
        <div class="row">
            <asp:Label ID="FeedbackLabel1" runat="server"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RoleBox1" ErrorMessage="Role name required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="col-md-12">
                <asp:TextBox ID="RoleBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                <br />
                <br />
                <h4>Name: </h4><asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Name required!" ForeColor="Red" ValidationGroup="User"></asp:RequiredFieldValidator>
                <br />
                <h4>Surname: </h4><asp:TextBox ID="SurnameTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="SurnameTextBox" ErrorMessage="Surname required!" ForeColor="Red" ValidationGroup="User"></asp:RequiredFieldValidator>
                <br />
                <h4>Email: </h4><asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email required!" ForeColor="Red" ValidationGroup="User"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Incorect email format!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="User"></asp:RegularExpressionValidator>
                <br />
                <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" ValidationGroup="User" />
                <br />
                <br />
                <asp:GridView ID="RoleList" runat="server" AutoGenerateColumns="False" OnRowDeleting="RoleList_RowDeleting">
                    <Columns>
                        <asp:CommandField DeleteText="Delete Role" ShowDeleteButton="True" />
                        <asp:TemplateField HeaderText="Role">
                            <ItemTemplate>    
                                 <asp:Label runat="server" ID="RoleNameLabel" Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>' />    
                             </ItemTemplate>    
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
                
                <br />

                <div>
                    <b>Select a User:</b>
                    <asp:DropDownList ID="UserList1" runat="server" AutoPostBack="true" DataTextField="UserName" DataValueField="UserName" OnSelectedIndexChanged="UserList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:Repeater ID="UserRoleList" runat="server">
                        <ItemTemplate> 
                            <asp:CheckBox runat="server" ID="RoleCheckBox" AutoPostBack="true" OnCheckedChanged="RoleCheckBox_CheckChanged" Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>' />
                        </ItemTemplate> 
                    </asp:Repeater>
                </div>
                
                <br />
                
            </div>               
        </div>
   </div>









</asp:Content>
