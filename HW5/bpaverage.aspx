<%--************************************
* bpAverage.aspx
* Akrom S
*
* This page uses exception handling to determine the
* average for 3 user-entered blood pressure readings.
************************************--%>

<%@ Page Language="C#"
  AutoEventWireup="False" ViewStateMode="Disabled"
  CodeFile="bpAverage.aspx.cs" Inherits="BpAverage" %>
<!doctype html>
<html>
<head>
<title>Blood Pressure Calculator</title>
</head>

<body>
<h2>Blood Pressure Checker</h2>
<p>
  In each field, enter a blood pressure reading with
  systolic and diastolic values separated by a "/".
  For example: 115 / 75  
</p>
<form runat="server">
  <div>
    First:
    <asp:TextBox id="bp1" columns="10" runat="server"/>
    &nbsp;&nbsp;&nbsp;
    Second:
    <asp:TextBox id="bp2" columns="10" runat="server"/>
    &nbsp;&nbsp;&nbsp;
    Third:
    <asp:TextBox id="bp3" columns="10" runat="server"/>
  </div>
  <br>
  <asp:Label id="bpAvg" runat="server"/>
  <br>
  <asp:Button Text="Calculate blood pressure average"
    OnClick="Calculate" runat="server"/>
</form>
</body>
</html>