<%@ Page Title="List of Classes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClassesPage.aspx.cs" Inherits="Assignment_2ab.ClassesPage" %>
<asp:Content ID="classes_list" ContentPlaceHolderID="body" runat="server">
    <h1>Teachers</h1>
    <div id="classes_result" class="_table" runat="server">
        <div class="listitem">
            <div class="col4">CLASS CODE</div>
            <div class="col4">START DATE</div>
            <div class="col4">FINISH DATE</div>
            <div class="col4last">CLASS NAME</div>
        </div>
    </div>
</asp:Content>
