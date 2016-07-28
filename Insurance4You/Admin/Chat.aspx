<%@ Page Title="Live Chat" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="Insurance4You.Admin.Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Styles" runat="server">
    <link rel="stylesheet" href="../Content/Chat.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="mainContainer" class="container-fluid">
        <div id="panel-clients">
            <div class="panel panel-default">
                <div class='panel-heading'>
                    <a href='#' id='closeRoom'><i class="fa fa-dot-circle-o" aria-hidden="true"></i></a>
                    <div class='panel-title'>Live Chat</div>
                </div>
                <div id="slide-wrapper">
                    <div id="clients" class="panel-body">
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script>
        $(function () {

            var chat = $.connection.chatHub;
            var isOpen = false;

            //register event handlers
            chat.client.broadcastMessage = function (message, groupname, name) {
                addMessage(message, groupname, name);
            };

            chat.client.left = function (list) {
                var newList = $.parseJSON(list);
                $.when(populateClientList(newList)).then(function () {
                    //chat.server.waitingTime();
                });
            };

            chat.client.joined = function (list) {
                var newList = $.parseJSON(list);
                $.when(populateClientList(newList)).then(function () {
                    //chat.server.waitingTime();
                });
            };
            chat.client.isRoomOpen = function (flag) {
                isOpen = flag;


            };
            chat.client.Check = function (msg) {

            };

            chat.client.getmsg = function (msg) {

            };

            chat.client.finishChat = function () {
                $("#input").css("display", "none");
            }
            chat.client.startChat = function () {
                $("#input").css("display", "initial");
            }

            //open connection
            $.connection.hub.start();

            //open room
            mainSwitch(chat);

            //send message
            sendMessage(chat);

            //open conversation
            openConversation(chat);
            //close conversation
            closeConversation(chat);

        });

        function mainSwitch(chatInst) {
            $("#closeRoom").click(function () {
                event.preventDefault();
                if ($("#slide-wrapper").is(":hidden")) {
                    $("#slide-wrapper").slideDown();
                    $('#panel-clients .panel-default').addClass("panel-success");
                    chatInst.server.openRoom();
                }
                else {
                    $("#slide-wrapper").slideUp();
                    $('#panel-clients .panel-default').removeClass("panel-success");
                    chatInst.server.closeRoom();
                }
            });
        }

        function sendMessage(chatInstance) {
            $.connection.hub.start().done(function () {
                $('#mainContainer').on('click', '.sendBtn', function (e) {
                    groupName = this.id;
                    chatInstance.server.send($('[data-group="' + groupName + '"] textarea').val(), groupName);
                    $('textarea.chatInput').val('').focus();
                });
            });
        }

        function populateClientList(list) {
            $('#clients').empty();
            for (var i = 0; i < list.length; i++) {
                $('#clients').append("<a href='#' class='user' data-con='" + list[i].conId + "' data-user='" + list[i].name + "'> <div class='well well-sm'> <p class='client'><i class='fa fa-user' aria-hidden='true'></i>" + list[i].name + "</p> </div> </a>");
            }
        }

        function openConversation(chatInst) {
            $('div#clients').on('click', 'a', function () {
                conId = $(this).attr("data-con");
                name = $(this).attr("data-user");
                $('#mainContainer').append("<div data-group='" + name + "' class='panel panel-default chat-panel'> <div class='panel-heading'> <a href='#' class='closeChat'><i class='fa fa-times' aria-hidden='true'></i> </a> <div class='panel-title'>Chat with<b> " + name + "</b></div> </div> <div  data-group='" + name + "' class='panel-body boardMessages'>  </div> <div class='panel-footer'> <div class='form-inline'> <div id='input' class='form-group'> <div class='input-group'> <textarea class='form-control chatInput' rows='1'></textarea> </div> <div class='input-group-addon'> <a class='sendBtn' id='" + name + "' href='#'><i class='fa fa-paper-plane-o' aria-hidden='true'></i></a> </div> </div> </div> </div> </div> ");
                chatInst.server.removeFromRoom(name, conId);
                chatInst.server.createConversation(name);
                chatInst.server.startConversation(name);
            });
        }
        function addMessage(msg, groupname, name) {
            $(".boardMessages[data-group='" + groupname + "']").append("<div class='left well'><p><i class='fa fa-commenting-o' aria-hidden='true'></i>" + name + "</p><div>" + msg + "</div></div>");
        }

        function closeConversation(chatInst) {
            $('#mainContainer').on('click', '.closeChat', function () {
                groupName = $(".chat-panel").attr("data-group");
                $("div[data-group='" + groupName + "']").remove();
                chatInst.server.finishConversation(groupName);
                chatInst.server.destroyConversation(groupName);
            });
        }
    </script>
</asp:Content>
