<%@ Control Language="C#" CodeBehind="ForeignKey.ascx.cs" Inherits="Insurance4You.ForeignKeyField" %>

<asp:HyperLink ID="HyperLink1" runat="server"
    Text="<%# GetDisplayString() %>"
    NavigateUrl="<%# GetNavigateUrl() %>"  />

