/*********************************************************
* emailAddressResult.aspx.cs
* Akrom S
*
* This code-behind file for the result of generated email address
* based on first name, last name, and faculty
*********************************************************/

using System;
using System.Web.UI;

public partial class EmailGeneratorResult : Page
{
  public void Page_Load(object s, EventArgs e)
  {
    message.Text = Request.QueryString["firstName"];
    message.Text += Request.QueryString["lastName"];
    message.Text += Request.QueryString["rbList.SelectedValue"];
  } //end Page_Load
} // end class