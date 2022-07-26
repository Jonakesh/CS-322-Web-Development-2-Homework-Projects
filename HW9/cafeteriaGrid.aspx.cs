/*********************************************************
* cafeteriaGrid.aspx.cs
* Akrom S
*
* This file handles the GridView display
* for a park's cafeteria menu directory applicaton.
***********************************************/

using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CafeteriaGrid : Page
{
  SqlConnection connection;
  SqlCommand command;
  SqlDataReader reader;

  // Bind MenuItems table data to DataGrid control.

  public void Page_Load()
  {
    string connectionString =
      "Data Source = localhost\\SQLEXPRESS;" +
      " Initial Catalog = menu;" +
      " Integrated Security = true";

    connection = new SqlConnection(connectionString);
    command = new SqlCommand(
      "SELECT * FROM MenuItems",
      connection);
    connection.Open();
    reader = command.ExecuteReader();
    gvMenuItems.DataSource = reader;
    gvMenuItems.DataBind();
    reader.Close();
    connection.Close();
  } // end Page_Load
} // end CafeteriaGrid
