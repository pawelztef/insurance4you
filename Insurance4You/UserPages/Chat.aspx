<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="Insurance4You.UserPages.Chat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Styles" runat="server">
    <link rel="stylesheet" href="../Content/MyPage.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="panel panel-default chat-panel-main">
            <div class="well well-sm opening-hours">
                <h5>Opening hours:</h5>
                <p>Daily 09:30 - 15:30</p>
            </div>
            <div id='Conversation' class='panel panel-default chat-panel'>
                <div class="head">
                    <div class='panel-heading' id='chat-panel-heading'>
                        <div class='panel-title'>Service Closed</div>
                    </div>
                </div>
                <div id="slide-wrapper">
                    <div id='boardMessages' class='panel-body'>
                    </div>
                    <div class='panel-footer'>
                        <div class='form-inline'>
                            <div class='form-group' id="input">
                                <div class='input-group'>
                                    <textarea id='chatI' class='form-control' rows='1'></textarea>
                                </div>
                                <div class='input-group-addon'>
                                    <a id='sendBtn' href='#'><i class='fa fa-paper-plane-o' aria-hidden='true'></i></a>
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
                    $(".panel-heading").css("padding-left", "40px");
                }
                else {
                    $('#chat-panel-heading').remove();
                    $(".head").append("<div class='panel-heading' id='chat-panel-heading'><div class='panel-title'> Service Closed</div></div>");
                    $(".panel-heading").css("padding-left", "15px");
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




    </script>
</asp:Content>
