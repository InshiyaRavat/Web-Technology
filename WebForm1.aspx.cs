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

        protected void btnadd_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt16(((TextBox)n1).Text);
            int b = Convert.ToInt16(((TextBox)n2).Text);
            int c =  a+ b;
           lblans.Text = c.ToString();
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt16(((TextBox)n1).Text);
            int b = Convert.ToInt16(((TextBox)n2).Text);
            int c = a - b;
            lblans.Text = c.ToString();
        }

        protected void btnmul_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt16(((TextBox)n1).Text);
            int b = Convert.ToInt16(((TextBox)n2).Text);
            int c = a * b;
            lblans.Text = c.ToString();
        }

        protected void btndiv_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt16(((TextBox)n1).Text);
            int b = Convert.ToInt16(((TextBox)n2).Text);
            int c = a / b;
            lblans.Text = c.ToString();
        }
    }
}