<%--***************************************
* cafeteria.aspx
* Akrom S
*
* This page connects to an Cafeteria menu database and allows
* the user to update, delete, and remove menu item records.
***************************************--%>

<%@ Page Language="C#" Debug="true"
  ViewStateMode="Disabled" EnableSessionState="false"
  CodeFile="cafeteria.aspx.cs" Inherits="Cafeteria" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Park Cafeteria Menu</title>
<style>
  .topAlign {vertical-align: top;}
</style>
</head>

<body>
<h1>Park Cafeteria Menu</h1>
<form runat="server">
  <asp:Table BorderWidth="1" BorderStyle="Solid" BorderColor="Blue"
    CellSpacing="5" runat="server">
    <asp:TableRow VerticalAlign="top" runat="server">
      <asp:TableCell runat="server">
        <asp:Button id="btnNew" Text="Add item"
          OnClick="AddItem" runat="server"/>
      </asp:TableCell>
      <asp:TableCell runat="server">
        <asp:Table runat="server">
          <asp:TableRow runat="server">
            <asp:TableCell Text="Day of week:" runat="server"/>
            <asp:TableCell runat="server">
              <asp:DropDownList id="dayofweek" runat="server">
                <asp:ListItem Text="Monday"/>
                <asp:ListItem Text="Tuesday"/>
                <asp:ListItem Text="Wednesday"/>
                <asp:ListItem Text="Thursday"/>
                <asp:ListItem Text="Friday"/>
              </asp:DropDownList>
            </asp:TableCell>
          </asp:TableRow>
          <asp:TableRow runat="server">
            <asp:TableCell Text="Meal:" runat="server"/>
            <asp:TableCell runat="server">
              <asp:DropDownList id="meal" runat="server">
              <asp:ListItem Text="lunch"/>
              <asp:ListItem Text="dinner"/>
            </asp:DropDownList>
            </asp:TableCell>
          </asp:TableRow>
          <asp:TableRow runat="server">
            <asp:TableCell Text="Item:" runat="server"/>
            <asp:TableCell runat="server">
              <asp:TextBox id="item" runat="server"/>
            </asp:TableCell>
          </asp:TableRow>
        </asp:Table>
      </asp:TableCell>
    </asp:TableRow>
  </asp:Table>
  <br>

  <asp:Table BorderWidth="1" BorderStyle="Solid" BorderColor="Blue"
    CellSpacing="5" runat="server">
    <asp:TableRow VerticalAlign="top" runat="server">
      <asp:TableCell runat="server">
        <asp:Button id="btnDelete" Text="Delete item"
          OnClick="DeleteItem" runat="server" />
      </asp:TableCell>
      <asp:TableCell runat="server">
        <asp:ListBox id="lb1Names"
          AutoPostBack="true" 
          ViewStateMode="Enabled"
          runat="server"/>
      </asp:TableCell>
    </asp:TableRow>
  </asp:Table>
  <br>

  <asp:HyperLink NavigateUrl="cafeteriaGrid.aspx"
    Text="View cafeteria menu in its entirety"
    Target="_blank"
    runat="server"/>
  <br><br>
  <asp:Label id="message" runat="server"/>
</form>
</body>
</html>