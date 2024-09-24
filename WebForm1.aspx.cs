using AccessWebService.localhost;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AccessWebService
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            System.Net.ServicePointManager.ServerCertificateValidationCallback = (senderX
                , certificate, chain, SslPolicyErrors) =>
            { return  true; };
            empService ews = new empService();
            int id = Convert.ToInt32(tb.Text);
            DataSet ds = ews.MyService(id);
            gv.DataSource = ds;
            gv.DataBind();
        }
    }
}