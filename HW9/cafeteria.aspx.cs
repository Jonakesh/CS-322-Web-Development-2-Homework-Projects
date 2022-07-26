/*********************************************************
* cafeteria.aspx.cs
* Akrom S
*
* This code-behind file handles the database connectivity and
* updates for cafeteria menu directory application.
*********************************************************/

using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Cafeteria : Page
{
  SqlConnection connection;
  SqlCommand command;
  SqlDataReader reader;

  public void Page_Load()
  {
    string connectionString =
      "Data Source = localhost\\SQLEXPRESS;" +
      " Initial Catalog = menu;" +
      " Integrated Security = true";

    connection = new SqlConnection(connectionString);
    if (!IsPostBack)
    {
      CalibrateControls();
    }
  } // end Page_Load

  //*********************************************************

  // Bind MenuItems table data to controls, disable delete

  private void CalibrateControls()
  {
    command = new SqlCommand(
      "SELECT ItemID, Concat(DayOfWeek, ', ', Meal, ', ', Item) AS MenuList" +
        " FROM MenuItems",
      connection);

    try
    {
      connection.Open();

      // Bind the delete-menu list box.
      reader = command.ExecuteReader();
      lb1Names.DataSource = reader;
      lb1Names.DataTextField = "MenuList";
      lb1Names.DataValueField = "ItemID";
      lb1Names.DataBind();
      reader.Close();
    }
    catch (Exception err)
    {
      message.Text = err.Message;
    }

    connection.Close();

    // At this point, there are no selected items in the
    // list boxes, so disable the Delete button.

    btnDelete.Enabled = false;

  } // end CalibrateControls

  //*********************************************************

  // Insert a new Item.

  public void AddItem(object s, EventArgs e)
  {
    command = new SqlCommand(
      "INSERT INTO MenuItems (DayOfWeek, Meal, Item)" +
      " VALUES (@DayOfWeek, @Meal, @Item)",
      connection);
    command.Parameters.AddWithValue("@DayOfWeek", dayofweek.Text);
    command.Parameters.AddWithValue("@Meal", meal.Text);
    command.Parameters.AddWithValue("@Item", item.Text);
    OpenAndExecute();

    // To prevent user from accidentally adding an item twice:
    dayofweek.Text = "";
    meal.Text = "";
    item.Text = "";
  } // end AddItem

  //*********************************************************

  // Remove selected item from database.

  public void DeleteItem(object s, EventArgs e)
  {
    command = new SqlCommand(
      "DELETE FROM MenuItems WHERE ItemID=@ItemID", connection);
    command.Parameters.AddWithValue("@ItemID", lb1Names.SelectedValue);
    OpenAndExecute();
  } // end DeleteItem

  //*********************************************************

  // Open the database connection, execute the current
  // command, and reset the controls.

  private void OpenAndExecute()
  {
    try
    {
      connection.Open();
      command.ExecuteNonQuery();
      connection.Close();
      CalibrateControls();
    }
    catch (Exception err)
    {
      message.Text = err.Message;
      connection.Close();
    }
  } // end OpenAndExecute
} // end Cafeteria