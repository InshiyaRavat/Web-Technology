using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileUpload
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if (file.PostedFile.ContentType == "image/jpeg" && file.PostedFile.ContentLength > 50000)
            {
                Response.Write("File type : " + file.PostedFile.ContentType);
                Response.Write("File size :" + file.PostedFile.ContentLength);
                Response.Write(file.PostedFile.FileName);
                file.PostedFile.SaveAs("rooted path" + file.PostedFile.FileName);
            }
            
        }
    }
}