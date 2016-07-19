<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="Insurance4You.Admin.Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Styles" runat="server">
    <link rel="stylesheet" href="../Content/Chat.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="mainContainer" class="container-fluid">
        <div id="panel-clients">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <b>Chat Room Insurance 4 You</b>

                </div>
                <div id="clients" class="panel-body">
                    <a href="#">
                        <div class="well well-sm">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <p class="client">aronusfuturus@gmai.com</p>
                        </div>
                    </a>
                    <a href="#">
                        <div class="well well-sm">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <p class="client">aronusfuturus@gmai.com</p>
                        </div>
                    </a>
                    <a href="#">
                        <div class="well well-sm">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <p class="client">aronusfuturus@gmai.com</p>
                        </div>
                    </a>
                    <a href="#">
                        <div class="well well-sm">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <p class="client">aronusfuturus@gmai.com</p>
                        </div>
                    </a>
                </div>
                <div class="panel-footer">
                    <button type="button" id="chatRoomBtn" class="btn btn-default btn-lg btn-block">Open</button>
                </div>
            </div>
        </div>


    </div>






    <script>
        $(function () {
            mainSwitch();
            openConversation();
            closeConversation();
            addMessage();
            sendMessage();
        });




        function mainSwitch() {
            $('#chatRoomBtn').click(function () {
                $(this).text(function (i, text) {
                    return text === "Open" ? "Close" : "Open";
                });
                $('#panel-clients .panel-default').toggleClass("panel-success");

            });

        }

        function openConversation() {
            $('div#clients>a').on('click', function () {
                $('#mainContainer').append("<div id='Conversation' class='panel panel-default chat-panel'> <div class='panel-heading'> <a href='#' id='closeChat'><i class='fa fa-times' aria-hidden='true'></i> </a> <div class='panel-title'>Panel title</div> </div> <div id='boardMessages' class='panel-body'>  </div> <div class='panel-footer'> <div class='form-inline'> <div class='form-group'> <div class='input-group'> <textarea id='chatInput' class='form-control' rows='2'></textarea> </div> <div class='input-group-addon'> <a id='sendBtn' href='#'><i class='fa fa-paper-plane-o' aria-hidden='true'></i></a> </div> </div> </div> </div> </div> ");
            });
        }
        function addMessage(msg) {
            $('#boardMessages').append("<div class='left'><i class='fa fa-commenting-o' aria-hidden='true'></i><p>" + msg + "</p></div>");
        }
        function closeConversation() {
            console.log('hello 1');
            $('#mainContainer').on('click', '#closeChat', function () {
                console.log('hello 2');
                $('#Conversation').remove();
                console.log('hello 3');
            });
        }




        function sendMessage() {
            // Declare a proxy to reference the hub. 
            var chat = $.connection.chatHub;
            // Create a function that the hub can call to broadcast messages.
            chat.client.broadcastMessage = function (name, message, decoration) {
                // Html encode display name and message. 
                var encodedName = $('<div />').text(name).html();
                var encodedMsg = $('<div />').text(message).html();
                // Add the message to the page. 
                addMessage(encodedMsg);
            };
            // Get the user name and store it to prepend to messages.
            $('#displayname').val(prompt('Enter your name:', ''));
            // Set initial focus to message input box.  
            // $('#chatInput').focus();
            // Start the connection.
            $.connection.hub.start().done(function () {
                $('#mainContainer').on('click', '#sendBtn', function () {
                    // Call the Send method on the hub. 
                    chat.server.send($('#displayname').val(), $('#chatInput').val());
                    // Clear text box and reset focus for next comment. 
                    $('#chatInput').val('').focus();
                });
            });
        };




    </script>


</asp:Content>
