<%--******************************
* hello.aspx
* Akrom S
*
* This page says hello and prints the time.
******************************--%>

<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
<title>Hello Page</title>
<script runat="server">
  public void Page_Load()
  {
    time.Text = DateTime.Now.ToString();
  }
</script>
</head>

<body>
<h2>Hello, world!!</h2>
<p>
  The time is now: <asp:Label id="time" runat="server" />
</p>
</body>
</html>
