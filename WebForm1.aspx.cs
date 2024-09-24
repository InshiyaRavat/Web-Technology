using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CRUDDatabase
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["DDU"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection(cs)){
                Response.Write("done");
            }
        }

        protected void insert_Click(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection(cs)) {                
                Response.Write("connection established");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into Student values(4,'abcd',8,'IT','H3')";
                con.Open();
                int n = cmd.ExecuteNonQuery();
                if(n == 0)
                {
                    Response.Write("Insert error");
                }
                else
                {
                    Response.Write("insert success");
                    display_Click(sender, e);
                }
            }
        }

        protected void update_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                Response.Write("connection established");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "update Student set batch = 'H2' where batch = 'H3'";
                con.Open();
                int n = cmd.ExecuteNonQuery();
                if (n == 0)
                {
                    Response.Write("Update error");
                }
                else
                {
                    Response.Write("Update success");
                    display_Click(sender, e);
                }
            }
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                Response.Write("connection established");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "delete from Student where Id=3";
                con.Open();
                int n = cmd.ExecuteNonQuery();
                if (n == 0)
                {
                    Response.Write("Delete error");
                }
                else
                {
                    Response.Write("Delete success");
                    display_Click(sender, e);
                }
            }
        }

        protected void display_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from Student";
                cmd.Connection = con;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                gv1.DataSource = reader;
                gv1.DataBind();
            }
        }
    }
}