<%--******************************
* goldenRectangle.aspx
* Akrom S
*
* This page generates a golden ratio
******************************--%>

<%@ Page Language="C#" CodeFile="goldenRectangle.aspx.cs" Inherits="HW3" %>
<!DOCTYPE html>
<html>
<head>
<title>Golden Rectangle Generator</title>
</head>

<body>
<h2>Golden Rectangle Generator</h2>
<form runat="server">
  <p>
    Dimensions for a rectangle that approximates a golden rectangle: 
      <asp:Label id="rectSize" Text="" runat="server"/><br>
    The rectangle's dimensions form a ratio that is 
      <asp:Label id="greaterOrLess" Text="" runat="server"/>
    than the golden ratio by 
      <asp:Label id="ratio" Text="" runat="server"/>
  </p>
  <p>
    <asp:Button Text="New golden rectangle" 
      OnClick="GenerateGoldenRect" runat="server"/>
  </p>
</form>
</body>
</html>