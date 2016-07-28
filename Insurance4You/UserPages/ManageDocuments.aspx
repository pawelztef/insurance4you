<%@ Page Title="My Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageDocuments.aspx.cs" Inherits="Insurance4You.UserPages.ManageDocuments" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Styles" runat="server">
    <link rel="stylesheet" href="../Content/MyPage.css" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Scripts/jquery.validate.js" />
        </Scripts>
    </asp:ScriptManagerProxy>
    <div class="row main">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-11 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#ContactDetails" aria-controls="ContactDetails" role="tab" data-toggle="tab">My Details</a></li>
                        <li role="presentation"><a href="#UploadDocuments" aria-controls="UploadDocuments" role="tab" data-toggle="tab">Upload Documents</a></li>
                    </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="ContactDetails">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-lg-offset-1 col-md-offset-1 details">
                                    <table class="table">
                                        <tr>
                                            <td>
                                                <h4>First Name:</h4>
                                            </td>
                                            <td>
                                                <asp:Label CssClass="TdDet" ID="FirstName" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h4>Last Name:</h4>
                                            </td>
                                            <td>
                                                <asp:Label CssClass="TdDet" ID="LastName" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h4>Phone Number:</h4>
                                            </td>
                                            <td>
                                                <asp:Label CssClass="TdDet" ID="Phone" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h4>Email:</h4>
                                            </td>
                                            <td>
                                                <asp:Label CssClass="TdDet" ID="Email" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h4>County:</h4>
                                            </td>
                                            <td>
                                                <asp:Label CssClass="TdDet" ID="County" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- Modal -->
                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title" id="myModalLabel">Update Your Details</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-md-8 col-md-offset-1">
                                                            <div class="form-horizontal">
                                                                <div class="form-group">
                                                                    <label for="UpdatePhone" class="col-sm-2 control-label">Phone</label>
                                                                    <div class="col-sm-10">
                                                                        <asp:TextBox ID="UpdatePhone" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-8 col-md-offset-1">
                                                            <div class="form-horizontal">
                                                                <div class="form-group">
                                                                    <label for="UpdatePhone" class="col-sm-2 control-label">Email</label>
                                                                    <div class="col-sm-10">
                                                                        <asp:TextBox ID="UpdateEmail" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="modal-footer">

                                                    <asp:Button ID="SaveUpdates" CssClass="btn btn-success" runat="server" OnClick="UpdateDetails_Click" Text="Save" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Of Modal -->
                                </div>
                            </div>
                            <div class="row text-center buttons">
                                <asp:Button ID="Button2" runat="server" data-toggle="modal" data-target="#myModal" CssClass="btn btn-default" Text="Update" />
                                <asp:Button ID="Button3" runat="server" CssClass="btn btn-default" PostBackUrl="~/Account/ResetPassword.aspx" Text="Change Password" />
                            </div>
                        </div>
                        <!-- panel two -->
                        <div role="tabpanel" class="tab-pane" id="UploadDocuments">
                            <div class="row">
                                <div class="col-md-5 col-md-offset-1">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Your Documents">
                                                <ItemTemplate>
                                                    <i class="fa fa-file-text"></i>
                                                    <asp:LinkButton ID="LinkButton1" OnClick="OpenDocument" runat="server" Text='<%# Eval("DocumentName") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                                <div class="col-md-5 col-md-offset-1 upload">

                                    <h5>Upload Here</h5>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Save" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:HiddenField ID="UserName" runat="server" />
    <script>

        $(function () {
            myValidation();
            isOpen = false;

            var chat = $.connection.chatHub;

            // register signalr event handlers
            chat.client.broadcastMessage = function (message, groupname, name) {
                addMessage(message, groupname, name);
            };
            chat.client.isRoomOpen = function (flag) {
                isOpen = flag;
            };
            chat.client.roomState = function (flag) {
                if (flag == true) {
                    $('#chat-panel-heading').remove();
                    $('.head').append("<div class='panel-heading' id='chat-panel-heading'> <a href='#' id='closeChat'><i class='fa fa-dot-circle-o' aria-hidden='true'></i></a> <div class='panel-title'>Live Chat</div> </div>");
                }
                else {
                    $('#chat-panel-heading').remove();
                    $(".head").append("<div class='panel-heading' id='chat-panel-heading'><div class='panel-title'> Service Closed</div></div>")
                    $("#slide-wrapper").slideUp();
                }

            };

            chat.client.startChat = function () {
                $("#input").css("display", "inline");
                clean();
            };

            chat.client.finishChat = function () {
                $("#input").css("display", "none");
            };
            chat.client.timeInQueue = function (msg) {
                if (!($("#input").is(":visible"))) {
                    $("#waiting").remove();
                    $("#boardMessages").append("<div id='waiting'><p><i class='fa fa-users' aria-hidden='true'></i>" + msg + "</p></div>");
                }

            }

            //open connection
            $.connection.hub.start().done(function () {
                chat.server.checkIsRoomOpen();
            });

            // join to room if available
            joinToRoom(chat);

            // send message
            sendMessage(chat);

        });
        function clean() {
            $("#waiting").remove();
            s = $("#waiting").html();
            console.log("inside clean " + s);
        }
        function joinToRoom(hubInst) {
            userName = $("#<%=UserName.ClientID %>").val();
            $('#chatI').attr('data-user', userName);
            $("#closeChat").mouseover(function () {
                event.preventDefault();
                hubInst.server.checkRoomState()
            });

            $("#Conversation").on('click', "#closeChat", function () {
                console.log("btn clk");
                event.preventDefault();

                if ($("#slide-wrapper").is(":hidden")) {
                    $("#slide-wrapper").slideDown();
                    $('#slide-wrapper').addClass("panel-success");
                    $('#chat-panel-heading').addClass("success");
                    hubInst.server.createConversation(userName);
                    hubInst.server.joinRoom().done(function () {
                    });
                }
                else {
                    hubInst.server.finishConversation(userName);
                    $(".left").remove();
                    $("#waiting").remove();
                    $("#slide-wrapper").slideUp();
                    $('#slide-wrapper').removeClass("panel-success");
                    $('#chat-panel-heading').removeClass("success");
                    hubInst.server.destroyConversation(userName);
                    hubInst.server.leaveRoom();

                }
            });
        }

        function sendMessage(chatInstance) {
            $.connection.hub.start().done(function () {
                $('#sendBtn').on('click', function () {
                    event.preventDefault();
                    userName = $("#<%=UserName.ClientID %>").val();
                    console.log("group name wihile send " + userName);
                    chatInstance.server.send($('#chatI').val(), userName);
                    $('#chatI').val('').focus();
                });
            });
        }

        function addMessage(msg, groupname, name) {
            $('#boardMessages').append("<div class='left well'><p><i class='fa fa-commenting-o' aria-hidden='true'></i>" + name + "</p><div>" + msg + "</div></div>");
        }

        function myValidation() {
            var x = $('#form');
            $(x).validate({
                rules: {
                    '<%= UpdatePhone.UniqueID %>': { required: true, number: true },
                    '<%= UpdateEmail.UniqueID %>': { required: true, email: true },
                },
                errorPlacement: function (error, element) {
                    element.after(error);
                    error.css("color", "red");
                    error.css('position', 'relative');
                },
            });
        }

    </script>
</asp:Content>
