<%--******************************
* stringCount.aspx
* Akrom S
*
* This page counts string input and outputs the times its been typed
******************************--%>

<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
<title>String Count</title>
<script runat="server">
  public void Count(object s, EventArgs e)
  {
    int found = 0;
    if (search.Text == "")
    {
      output.Text = "You must enter a value in the Search string field.";
    } 
    else
    {
      textBox.Text.IndexOf(search.Text);
      found++;
      output.Text = 
        "The string \"" + search.Text + "\" occurs " + found + " times.";
    }
  }
</script>
</head>

<body>
<form runat="server">
  <asp:TextBox id="textBox" 
    PlaceHolder="Insert a text here that you want to search through." 
    TextMode="MultiLine" Columns="60" Rows="5" runat="server" />
  <br><br>
  <p>
    Search string: 
    <asp:TextBox id="search" runat="server" />
    <asp:Button Text="Count" OnClick="Count" runat="server" />
    <br><br>
    <asp:Label id="output" runat="server" />
  </p>
</form>
</body>
</html>