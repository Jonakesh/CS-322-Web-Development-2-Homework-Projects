<%--***************************************
* cafeteriaGrid.aspx
* Akrom S
*
* This page connects to a park's menu database
* and displays the menu list records in a grid.
***************************************--%>

<%@ Page Language="C#" Debug="true"
  ViewStateMode="Disabled" EnableSessionState="false"
  CodeFile="cafeteriaGrid.aspx.cs" Inherits="CafeteriaGrid" %>
<!doctype html>
<html>
<head>
<title>Cafeteria items</title>
</head>

<body>
<h1>Cafeteria items</h1>
<form runat="server">
  <asp:GridView id="gvMenuItems" AutoGenerateColumns="false"
    BorderWidth="2" BorderStyle="Solid" BorderColor="Red"
    CellPadding="5" GridLines="Vertical" runat="server">
    <HeaderStyle Font-Bold="true"
      BackColor="DarkBlue" ForeColor="White"/>
    <AlternatingRowStyle BackColor="LightGray"/>
    <Columns>
      <asp:BoundField DataField="DayOfWeek"
        HeaderText="Day of Week"/>
      <asp:BoundField DataField="Meal"
        HeaderText="Meal"/>
      <asp:BoundField DataField="Item"
        HeaderText="Item"/>
    </Columns>
  </asp:GridView>
</form>
</body>
</html>