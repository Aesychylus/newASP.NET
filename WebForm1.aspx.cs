using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Calculation(object sender, EventArgs e)
        {
            var firstNumber =Convert.ToDecimal(this.firstBox.Text);
            var secondNumber = Convert.ToDecimal(this.secondBox.Text);
            var opt = this.DropDownList.SelectedValue;
            var rslt=0;

            if (opt == "+")
            {
                rslt = Convert.ToInt32(firstNumber + secondNumber);
            }
            else if (opt == "-")
            {
                rslt = Convert.ToInt32(firstNumber - secondNumber);
            }
            else if (opt == "*")
            {
                rslt = Convert.ToInt32(firstNumber * secondNumber);
            }
            else if (opt == "/")
            {
                rslt = Convert.ToInt32(firstNumber / secondNumber);
            }
            resultLabel.Text = rslt.ToString();        
        }   

    }
}