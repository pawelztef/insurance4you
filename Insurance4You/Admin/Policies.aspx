<%@ Page Title="Plicies" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Policies.aspx.cs" Inherits="Insurance4You.Admin.Policies" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Styles" runat="server">
    <link rel="stylesheet" href="../Content/AssignRoles.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <asp:ScriptManagerProxy ID="ScriptManagerProxy2" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Scripts/jquery.validate.js" />
        </Scripts>
    </asp:ScriptManagerProxy>
    <div class="row main">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-11 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading" id="driverSearch">
                    <div class="from-inline">
                        <div class="form-group">
                            <label for="FindDriverTextBox">Driver Search</label>
                            <asp:TextBox ID="FindDriverTextBox" runat="server"></asp:TextBox>
                            <asp:SqlDataSource ID="DriversSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Title], [Id], [FirstName], [SecondName], [SiteUserId] FROM [Driver] WHERE ([PolicyId] = @PolicyId)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="FindDriverTextBox" Name="PolicyId" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:Button ID="FindDriverButton" CssClass="btn btn-success" runat="server" Text="Search" />
                        </div>
                    </div>

                </div>
                <div class="panel-body">

                    <div class="table-responsive">
                        <div class="text-center">
                            <h4>Policies</h4>
                            <asp:GridView ID="GD1" runat="server" CssClass="table" AutoGenerateColumns="False" CellPadding="3" CellSpacing="3" HorizontalAlign="Center">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" />
                                    <asp:BoundField DataField="FirstName" HeaderText="Frist Name" />
                                    <asp:BoundField DataField="SecondName" HeaderText="Second Name" />
                                    <asp:BoundField DataField="Make" HeaderText="Make" />
                                    <asp:BoundField DataField="Model" HeaderText="Model" />
                                    <asp:BoundField DataField="RegNumber" HeaderText="Reg. No." />
                                    <asp:BoundField DataField="Engine" HeaderText="Engine" />
                                    <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
                                    <asp:BoundField DataField="Checked" HeaderText="Checked" />
                                    <asp:BoundField DataField="Rejected" HeaderText="Rejected" />
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageB" runat="server" Height="24px" ImageUrl="~/Images/pencil.png" Width="25px" OnClick="Image_Click" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                        </div>
                    </div>
                    <asp:Button ID="ButtonShowPopUp" runat="server" Style="display: none;" BorderStyle="None" />
                    <asp:Panel ID="Panel1" runat="server" Width="300px" Height="220px" Style="display: none; border: 1px solid #222222; background: white">
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
                                    <asp:Button ID="ModalUpdateButton" runat="server" OnClick="ModalUpdateButton_Click" Text="Update" />
                                    <asp:Button ID="ModalCancelButton" runat="server" Text="Cancel" />
                                </td>
                                <td class="auto-style21"></td>
                            </tr>
                        </table>
                    </asp:Panel>



                    <ajax:ModalPopupExtender ID="ModalPopupExtender1" BackgroundCssClass="modalBackground" TargetControlID="ButtonShowPopUp" runat="server" PopupControlID="Panel1" CancelControlID="ModalCancelButton"></ajax:ModalPopupExtender>
                    <div class="table-responsive">
                        <div class="text-center">

                            <h4>Driver</h4>

                            <asp:GridView ID="GridView1" runat="server" DataKeyNames="SiteUserId" DataSourceID="DriversSource" EmptyDataText="No Results!" HorizontalAlign="Center">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                    
                        <asp:GridView ID="DriverDocumments" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                            <Columns>
                                <asp:TemplateField HeaderText="Available Documents">
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
            </div>
        </div>
    </div>
    <script>


          $(function () {
            var x = $('#form');
            $(x).validate({
                rules: {
                    '<%=FindDriverTextBox.UniqueID%>': { required: true, number: true }
                   
                },
                errorPlacement: function (error, element) {
                    element.after(error);
                    error.css("color", "red");
                    error.css('position', 'relative');
                  
                }
            });
              $('#MainContent_Button5').on('click', function () {
                  if ($("#form1").valid()) {
                      console.log("true");
                  } else {
                      console.log("false");
                  };
              })
          
        });
    </script>
</asp:Content>
