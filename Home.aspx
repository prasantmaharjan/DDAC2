<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DDAC.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
    <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="2500"></asp:Timer>
    <asp:Image style="width:100%;height:575px;" ID="Image1" runat="server" />
</asp:Content>
