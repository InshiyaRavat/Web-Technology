using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopTotalPrice
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int totalPrice = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            lbl1.Text = "<br/><br/>";
            foreach(ListItem item in cbl1.Items){
                if (item.Selected)
                {
                    lbl1.Text += item.Text +  "<br/>";
                }        
            }
            lbl1.Text += "<br/>" + "Total price: " + tb1.Text;
        }

        protected void cbl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (ListItem item in cbl1.Items)
            {
                if (item.Selected)
                {
                    totalPrice += Convert.ToInt16(item.Value);
                }
            }
            tb1.Text = totalPrice.ToString();
        }
    }
}