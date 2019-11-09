<%@ Page Title="List of Teachers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeacherPage.aspx.cs" Inherits="Assignment_2ab.TeacherPage" %>
<asp:Content ID="teachers_list" ContentPlaceHolderID="body" runat="server">
    <h1>Teachers</h1>
    <div id="teachers_result" class="_table" runat="server">
        <div class="listitem">
            <div class="col5">FIRST NAME</div>
            <div class="col5">LAST NAME</div>
            <div class="col5">EMPLOYEE NUMBER</div>
            <div class="col5">HIRE DATE</div>
            <div class="col5last">SALARY</div>
        </div>
    </div>
</asp:Content>
