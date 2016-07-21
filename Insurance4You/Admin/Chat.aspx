<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="Insurance4You.Admin.Messages" %>

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

            openConversation();
            closeConversation();


            var chat = $.connection.chatHub;
            var isOpen = false;

            //register event handlers
            chat.client.broadcastMessage = function (name, message, decoration) {
                var encodedName = $('<div />').text(name).html();
                var encodedMsg = $('<div />').text(message).html();
                addMessage(encodedMsg);
            };

            chat.client.left = function (list) {
                var newList = $.parseJSON(list);
                populateClientList(newList);
                console.log('done left');
            };

            chat.client.joined = function (list) {
                var newList = $.parseJSON(list);
                populateClientList(newList);
                console.log('done joined');
            };
            chat.client.isRoomOpen = function (flag) {
                isOpen = flag;
                console.log(flag);

            };
            chat.client.Check = function (msg) {
                console.log(msg);
            };

            chat.client.getmsg = function (msg) {
                console.log(msg);
            };
            //open connection
            $.connection.hub.start();

            //open room
            mainSwitch(chat);

            //send message
            sendMessage(chat);


        });




        function mainSwitch(mychat) {

            $("#closeRoom").click(function () {

                if ($("#slide-wrapper").is(":hidden")) {
                    $("#slide-wrapper").slideDown();
                    $('#panel-clients .panel-default').addClass("panel-success");
                    mychat.server.roomOpen(true);

                }
                else {
                    $("#slide-wrapper").slideUp();
                    $('#panel-clients .panel-default').removeClass("panel-success");
                    mychat.server.roomOpen(false);

                }
            });


        }

        function sendMessage(chatInstance) {
            $('#displayname').val(prompt('Enter your name:', ''));
            $.connection.hub.start().done(function () {
                $('#mainContainer').on('click', '#sendBtn', function () {
                    chatInstance.server.send($('#displayname').val(), $('#chatInput').val());
                    $('#chatInput').val('').focus();
                });
            });
        }

        function populateClientList(list) {
            $('#clients').empty();
            for (var i = 0; i < list.length; i++) {
                $('#clients').append("<a href='#'> <div class='well well-sm'> <p class='client' data-user='" + list[i].name + "'><i class='fa fa-user' aria-hidden='true'></i>" + list[i].name + "</p> </div> </a>");
            }
        }

        function openConversation() {
            $('div#clients').on('click', 'a', function () {
                $('#mainContainer').append("<div id='Conversation' class='panel panel-default chat-panel'> <div class='panel-heading'> <a href='#' id='closeChat'><i class='fa fa-times' aria-hidden='true'></i> </a> <div class='panel-title'>Panel title</div> </div> <div id='boardMessages' class='panel-body'>  </div> <div class='panel-footer'> <div class='form-inline'> <div class='form-group'> <div class='input-group'> <textarea id='chatInput' class='form-control' rows='2'></textarea> </div> <div class='input-group-addon'> <a id='sendBtn' href='#'><i class='fa fa-paper-plane-o' aria-hidden='true'></i></a> </div> </div> </div> </div> </div> ");
            });
        }

        function addMessage(msg) {
            $('#boardMessages').append("<div class='left'><i class='fa fa-commenting-o' aria-hidden='true'></i><p>" + msg + "</p></div>");
        }

        function closeConversation() {

            $('#mainContainer').on('click', '#closeChat', function () {

                $('#Conversation').remove();

            });
        }






    </script>


</asp:Content>
