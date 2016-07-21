<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebFrom2.aspx.cs" Inherits="Insurance4You.WebFrom2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Styles" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="answers" style="margin-top: 50px;">
        <ul>
            <li>
                <input id="answer" type="radio" onclick="feedback('THE MESSAGE HTML')"><label>Label</label>
            </li>
        </ul>
    </div>

    <script>

        $(function () {
            var chat = $.connection.testHub;

            chat.client.getmsg = function (msg) {
                console.log(msg);
            };
            $.connection.hub.start().done(
                function () {
                    var msg = "pawel";
                    chat.server.send2(msg);
                }
                );
            $.connection.hub.start().done(
               function () {
                   var msg = "pawel";
                   chat.server.send2(msg);
               }
               );



        });


    </script>


</asp:Content>
