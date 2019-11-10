<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentsxClassesCRUD.aspx.cs" Inherits="Assignment_2ab.WebForm4" %>


<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <section>
        <h1>StudentsxClasses Information Form</h1>
    </section>
    <section>
        <h2>StudentsxClasses ID</h2>
        <asp:TextBox runat="server" ID="sudentsxclasses_idnumber" placeholder="e.g. 1"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true"
            ControlToValidate="sudentsxclasses_idnumber"
            ValidationExpression="\d*"
            ErrorMessage="Please enter a valid StudentsxClasses ID Number (e.g. 123)."></asp:RegularExpressionValidator>
        <%--https://docs.microsoft.com/en-us/dotnet/standard/base-types/regular-expressions--%>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter StudentsxClasses ID Number."
            ControlToValidate="sudentsxclasses_idnumber"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>Student ID</h2>
        <asp:TextBox runat="server" ID="student_idnumber" placeholder="e.g. 1" ></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true"  
            ControlToValidate="student_idnumber" 
            ValidationExpression="\d*" 
            ErrorMessage="Please enter a valid ID Number (e.g. 123)."></asp:RegularExpressionValidator> 
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter Student ID Number."
            ControlToValidate="student_idnumber"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>Class ID</h2>
        <asp:TextBox runat="server" ID="class_idnumber" placeholder="e.g. 1"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" EnableClientScript="true"
            ControlToValidate="class_idnumber"
            ValidationExpression="\d*"
            ErrorMessage="Please enter a valid Class ID Number (e.g. 123)."></asp:RegularExpressionValidator>
        <%--https://docs.microsoft.com/en-us/dotnet/standard/base-types/regular-expressions--%>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter Class ID Number."
            ControlToValidate="class_idnumber"></asp:RequiredFieldValidator>
    </section>
     <section>
        <asp:ValidationSummary runat="server" ShowSummary="true" />
    </section>
    <section id="confirmbox" runat="server">
    </section>
    <section>
        <input type="submit" value="submit" />
    </section>

</asp:Content>
