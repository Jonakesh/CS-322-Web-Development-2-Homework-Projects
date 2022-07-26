/*********************************************************
* emailAddress.aspx.cs
* Akrom S
*
* This code-behind file for generating an email address
* based on first name, last name, and faculty
*********************************************************/

using System;
using System.Web.UI;

public partial class EmailGenerator : Page
{
  public void Submit(object s, EventArgs e)
  {
    Response.Redirect("emailAddressResult.aspx?" + "firstName=" + Server.UrlEncode(firstName.Text) +
      "." + "&lastName=" + Server.UrlEncode(lastName.Text) + Server.UrlEncode(rbList.SelectedValue));
  } // end Submit
  public void Reset(object s, EventArgs e)
  {
    firstName.Text = null;
    lastName.Text = null;
    rbList.SelectedIndex = -1;
  } // end Reset
} // end class
