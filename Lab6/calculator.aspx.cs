using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class calculator : System.Web.UI.Page
{
    public int Integer1;
    public int Integer2;
    public int Integer3;    

    protected void Page_Load(object sender, EventArgs e){}

    protected void CalculateStats(object sender, EventArgs e)
    {
        LabelError.Text = "";
        List<int> list = new List<int>();//blank list

        Integer1 = validateInteger(Number1.Text, "First Number");
        list.Add(Integer1);
        Integer2 = validateInteger(Number2.Text, "Second Number");
        list.Add(Integer2);
        Integer3 = validateInteger(Number3.Text, "Third Number");
        list.Add(Integer3);

        if (list.Count() > 0)
        {
            int listLength = list.Count();
            list.Sort();

            //calculate Maximum
            int maxInteger = list[listLength - 1];
            LabelMaximum.Text = maxInteger.ToString();

            //calculate Minimum
            int minInteger = list[0];
            LabelMinimum.Text = minInteger.ToString();

            //calculate Total
            int Total = 0;
            int integers = 0;
            foreach (int integer in list)
            {
                Total += integer;
                integers++;
            }
            LabelTotal.Text = Total.ToString();

            //calculate Average
            int Average = Total / integers;
            LabelAverage.Text = Average.ToString();
        }
    }

    protected int validateInteger(string integer, string fieldName)
    {
        int amount = 0;
        int validInteger;

        string inputInteger = integer;

        if (!string.IsNullOrEmpty(inputInteger))//if not null, process integer values
        {
            //check if input is valid integer
            if (Int32.TryParse(inputInteger, out validInteger))
            {
                amount = validInteger;
            }
            else
            {
                LabelError.Text += "Error: Invalid input for " + fieldName + ".<br/>";
            }
        }
        else
        {//if null or empty
            LabelError.Text += "Error: Invalid input for " + fieldName + ".<br/>";
        }

        return amount;
    }
}