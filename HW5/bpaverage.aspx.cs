/*********************************************************
* bpAverage.aspx.cs
* Akrom S
*
* This code-behind file processes 3 blood pressure fields
* when a button is clicked.
*********************************************************/

using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BpAverage: Page
{
  // Calculate the average blood pressure value
  
  public void Calculate(object s, EventArgs e)
  {
    int systolicAvg;  // rounded average of systolic values
    int diastolicAvg; // rounded average of diastolic values
    
    // In C#, you can't assign a 1-dimensional array
    // to one row of a 2-dimensional array, so
    // use 3 one-dimensional arrays.
    
    // Each array holds 2 elements, where the 1st
    // element is for systolic and 2nd one is for diastolic
    int[] bp1Ints, bp2Ints, bp3Ints;
    string resultMsg = ""; // message for result label
    
    try
    {
      bp1Ints = GetBpInts(bp1);
      bp2Ints = GetBpInts(bp2);
      bp3Ints = GetBpInts(bp3);
      systolicAvg =
        (int) Math.Round(
          (bp1Ints[0] + bp2Ints[0] + bp3Ints[0]) / 3.0);
      diastolicAvg =
        (int) Math.Round(
          (bp1Ints[1] + bp2Ints[1] + bp3Ints[1]) / 3.0);
      resultMsg = "Average blood pressure = " +
        systolicAvg + " / " + diastolicAvg + "<br><br>";
    } // end try

    // If the above try code is successful, display the above
    // result message in the bpAvg label.
    // Otherwise, if any of the input boxes has a non-empty
    // invalid value, display this message:
    // 'Invalid value. You must enter two integers separated by a "/".'
    // Otherwise, if any of the input boxes is empty, display this message:
    // "You must enter blood pressure values for all three fields."
    catch (NullReferenceException err)
    {
      resultMsg = "You must enter blood pressure" +
        " values for all three fields.<br><br>";
    }
    catch (Exception err)
    {
      resultMsg = err.Message;
    }

    bpAvg.Text = resultMsg;
  } // end Calculate
  
  //********************************
  
  // Retrieve 2 integers from the textbox.
  
  private int[] GetBpInts(TextBox bpTextbox)
  {
    string bpStr;  // blood pressure reading from textbox
    string[] bpStrArr;
    int[] bpIntArr = new int[2];

    bpStr = bpTextbox.Text;
    if (bpStr == "")
    {
      bpIntArr = null;
    }
    else
    {
      bpStrArr = bpTextbox.Text.Split('/');

      if (bpStrArr.Length != 2)
      {
        bpTextbox.Attributes.Add("onfocus", "select()");
        bpTextbox.Focus();
        throw new Exception("Invalid value. You must" +
          " enter two integers separated by a \"/\".<br><br>");
      }
      else
      {
        bpIntArr[0] = GetInt(bpTextbox, bpStrArr[0]);
        bpIntArr[1] = GetInt(bpTextbox, bpStrArr[1]);
      }
    } // end else
    
    return bpIntArr;
  } // end getBpInts
  
  //********************************
  
  private int GetInt(TextBox bpTextbox, string bpStr)
  {
    // If the passed-in string holds an integer, return it.
    // Otherwise, as shown in the method above, highlight
    // the text box's content and throw an exception with
    // this message inside it:
    // 'Invalid value. You must enter two integers separated by a "/".'

    try
    {
      return int.Parse(bpStr);
    }
    catch (FormatException e)
    {
      bpTextbox.Attributes.Add("onfocus", "select()");
      bpTextbox.Focus();
      throw new Exception("Invalid value. You must" +
        " enter two integers separated by a \"/\".<br><br>");
    }
  } // end GetInt
} // end class