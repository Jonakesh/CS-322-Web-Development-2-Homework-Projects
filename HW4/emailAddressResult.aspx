<%--******************************
* emailAddressResult.aspx
* Akrom S
*
* This is a redirected page for result of a generated email address
******************************--%>

<%@ Page Language="C#" CodeFile="emailAddressResult.aspx.cs" Inherits="EmailGeneratorResult" 
  AutoEventWireup="True" ViewStateMode="Disabled" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Email Address Generator RESULTS</title>
<style>
  .underline {
    text-decoration: underline;
  }
</style>
</head>

<body>
<p>Here's your generated e-mail address:</p>
<form runat="server">
  <p>
    <asp:Label ID="message" CssClass="underline" runat="server"/>
  </p>
</form>
</body>
</html>