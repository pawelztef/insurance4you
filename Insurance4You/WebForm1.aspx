<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Insurance4You.WebForm1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://use.fontawesome.com/e2c6db3e7f.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style9 {
            width: 124px;
            height: 33px;
        }
        .auto-style10 {
            height: 27px;
            text-align: center;
        }
        .auto-style14 {
            width: 85px;
            height: 33px;
        }
        .auto-style16 {
            width: 85px;
            height: 37px;
        }
        .auto-style17 {
            width: 124px;
            height: 37px;
        }
        .auto-style18 {
            height: 37px;
        }
        .auto-style19 {
            width: 85px;
            height: 32px;
        }
        .auto-style20 {
            width: 124px;
            height: 32px;
        }
        .auto-style21 {
            height: 32px;
        }
        .auto-style22 {
            height: 33px;
        }
        .auto-style23 {
            height: 43px;
            text-align: center;
        }
        .modalBackground{
            background-color: gray;
            filter: alpha(opacity-80);
            opacity: 0.8;
            z-index: 10000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:GridView ID="GD1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" />
                <asp:BoundField DataField="FirstName" HeaderText="Frist Name" />
                <asp:BoundField DataField="SecondName" HeaderText="Second Name" />
                <asp:BoundField DataField="Checked" HeaderText="Checked" />
                <asp:BoundField DataField="Rejected" HeaderText="Rejected" />
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>

                        <asp:ImageButton ID="ImageButton1" runat="server" Height="24px" ImageUrl="~/Images/pencil.png" Width="25px" OnClick="ImageButton1_Click" />

                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

<asp:Button ID="ButtonShowPopUp" runat="server" style="display:none;" />
        <asp:Panel ID="Panel1" runat="server" Width="300px" Height="200px" style="display:none; border: 1px solid #222222; background: white">
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
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
                        <asp:Button ID="Button2" runat="server" Text="Cancel" />
                    </td>
                    <td class="auto-style21"></td>
                </tr>
            </table>
        </asp:Panel>


        <ajax:ModalPopupExtender ID="ModalPopupExtender1" BackgroundCssClass="modalBackground" TargetControlID="ButtonShowPopUp" runat="server" PopupControlID="Panel1" CancelControlID="Button2"></ajax:ModalPopupExtender>
    </form>
</body>
</html>
