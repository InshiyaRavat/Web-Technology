using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FacultyInfoICT
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.cbl.SelectedIndexChanged += cbl_selected;
        }
        private void cbl_selected(object sender, EventArgs e)
        {
            names.Text = "hello";
            if(Master.cbl.SelectedIndex == 0)
            {
                names.Text = "ANV" + "<br/>" + "HBP";
            }
            else if(Master.cbl.SelectedIndex == 1)
            {
            names.Text = "JB" + "<br/>" + "CKB";
            }
            else if(Master.cbl.SelectedIndex == 2)
            {
                names.Text = "NVP" + "<br/>" + "HR";
            }
        }
    }
}