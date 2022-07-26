/*********************************************************
* goldenRectangle.aspx.cs
* Akrom S
*
* This code-behind file generates a golden ratio
*********************************************************/

using System;
using System.Web.UI;

public partial class HW3: Page
{
  public void Page_Load(object s, EventArgs e)
  {
    GenerateGoldenRect(s, e);
  }
  public void GenerateGoldenRect(object s, EventArgs e)
  {
    Random random = new Random();
    double goldenRatio = 1.6180;
    int height = random.Next(50, 201);
    int width = (int)Math.Round(height * goldenRatio);
    rectSize.Text = width.ToString() + " x " + height.ToString();
    double differenceWH = 
      Math.Round(((double)width / (double)height) - goldenRatio, 4);
    if (differenceWH > 0)
    {
      greaterOrLess.Text = "greater";
    }
    else
    {
      greaterOrLess.Text = "less";
      differenceWH = differenceWH * (-1);
    }
    ratio.Text = String.Format("{0:#.0000}", differenceWH);
  } // end GoldenRect
} // end 
  