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

        $('#answer').on('click', function () {
            feedback('hey there');
        });

        var counter = 0;

        function feedback(message) {

            //$('#feedback').remove();

            $('.answers').append('<div id="feedback">' + message + ' ' + counter + '</div>');

            counter++;
        }


    </script>


</asp:Content>
