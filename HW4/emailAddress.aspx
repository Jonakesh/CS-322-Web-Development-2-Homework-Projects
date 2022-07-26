<%--******************************
* emailAddress.aspx
* Akrom S
*
* This generates an email and sends
* the page to a new page
******************************--%>

<%@ Page Language="C#" CodeFile="emailAddress.aspx.cs" Inherits="EmailGenerator" 
  AutoEventWireup="False" ViewStateMode="Disabled" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Email Address Generator</title>
<style>
  #vldFirstName, 
  #vldLastName, 
  #vldFaculty {
    color: red;
  }
</style>
</head>

<body>
<h1>E-mail Address Generator</h1>
<form runat="server">

  <%-- First and last name textboxes with validator below them --%>
  <p>
    First name:
    <asp:TextBox ID="firstName" TextMode="SingleLine" Columns="20" runat="server"/>
    <asp:RequiredFieldValidator ID="vldFirstName" ControlToValidate="firstName" ErrorMessage="Enter your first name." runat="server"/>
  </p>
  <p>
    Last name:
    <asp:TextBox ID="lastName" TextMode="SingleLine" Columns="20" runat="server"/>
    <asp:RequiredFieldValidator ID="vldLastName" ControlToValidate="lastName" ErrorMessage="Enter your last name." runat="server"/>
  </p>

  <%-- Radio buttons list with validator below them --%>
  <p>Type of email address:</p>
  <asp:RadioButtonList ID="rbList" runat="server">
    <asp:ListItem Text="full-time faculty" Value="@park.edu"/>
    <asp:ListItem Text="adjunct faculty" Value="@adjunct.park.edu"/>
  </asp:RadioButtonList>
  <asp:RequiredFieldValidator ID="vldFaculty" ControlToValidate="rbList" ErrorMessage="Select full-time or adjunct." runat="server"/><br>

  <%-- Buttons to submit(redirects the page) or reset(removes all input) --%>
  <asp:Button Text="Submit" OnClick="Submit" runat="server"/>
  <asp:Button Text="Reset" OnClick="Reset" CausesValidation="false" runat="server"/>
</form>
</body>
</html>