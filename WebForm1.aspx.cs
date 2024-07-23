using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BasicCalculator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Command(object sender, CommandEventArgs e)
        {
            int a = Convert.ToInt16(((TextBox)n1).Text);
            int b = Convert.ToInt16(((TextBox)n2).Text);
            int c=0;
             
            
            if (e.CommandName == "add")
            {
                c = a + b;
            }
            else if (e.CommandName == "sub")
            {
                c = a - b;
            }
            else if(e.CommandName == "mul")
            {
                c = a * b;
            }
            else if (e.CommandName == "div" && b!=0)
            {
                c = a / b;
            }
            lblans.Text = c.ToString();
        }

        protected void n2_TextChanged(object sender, EventArgs e)
        {
            //int b = Convert.ToInt16(((TextBox)n2).Text);

            if (n2.Text == "0")
            {
                lblans.ForeColor = System.Drawing.Color.Red;
                btndiv.Enabled = false;
                lblans.Text = "Number2 must not be 0";
            }
            else
            {
                btndiv.Enabled = true;
                lblans.Text = "";
                lblans.ForeColor= System.Drawing.Color.Black;
            }
        }
    }
}