using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Country_SelectedIndexChanged(object sender, EventArgs e)
        {
            State.Items.Clear();
            if(Country.SelectedValue == "USA")
            {
                ListItem florida = new ListItem("Florida");
                ListItem california = new ListItem("California");
                ListItem LA = new ListItem("Los Angeles");
                State.Items.Add(florida);
                State.Items.Add(california);
                State.Items.Add(LA);
            }
            else if (Country.SelectedValue == "India")
            {
                ListItem gujarat = new ListItem("Gujarat");
                ListItem MP = new ListItem("Madhya Pradesh");
                ListItem HP = new ListItem("Himachal Pradesh");
                State.Items.Add(gujarat);
                State.Items.Add(MP);
                State.Items.Add(HP);
            }
        }

        protected void State_SelectedIndexChanged(object sender, EventArgs e)
        {
            City.Items.Clear();
            if (State.SelectedValue == "Florida")
            {
                ListItem  miami= new ListItem("Miami");
                ListItem orlando = new ListItem("Orlando");
                ListItem KW = new ListItem("Key West");
                City.Items.Add(miami);
                City.Items.Add(orlando);
                City.Items.Add(KW);
            }
            else if (State.SelectedValue == "California")
            {
                ListItem sf = new ListItem("San Francisco");
                ListItem sd = new ListItem("San Diego");
                ListItem ok = new ListItem("Oakland");
                City.Items.Add(sf);
                City.Items.Add(sd);
                City.Items.Add(ok);
            }
            else if (State.SelectedValue == "Los Angeles")
            {
                ListItem sf = new ListItem("Mid-City");
                ListItem sd = new ListItem("Silver Lake");
                ListItem ok = new ListItem("Echo Park");
                City.Items.Add(sf);
                City.Items.Add(sd);
                City.Items.Add(ok);
            }
            else if (State.SelectedValue == "Gujarat")
            {
                ListItem sf = new ListItem("Dahod");
                ListItem sd = new ListItem("Rajkot");
                ListItem ok = new ListItem("Ahmedabad");
                City.Items.Add(sf);
                City.Items.Add(sd);
                City.Items.Add(ok);
            }
            else if (State.SelectedValue == "Madhya Pradesh")
            {
                ListItem sf = new ListItem("Bhopal");
                ListItem sd = new ListItem("Ujjain");
                ListItem ok = new ListItem("Indore");
                City.Items.Add(sf);
                City.Items.Add(sd);
                City.Items.Add(ok);
            }
            else if (State.SelectedValue == "Himachal Pradesh")
            {
                ListItem sf = new ListItem("Manali");
                ListItem sd = new ListItem("Shimla");
                ListItem ok = new ListItem("Dharamshala");
                City.Items.Add(sf);
                City.Items.Add(sd);
                City.Items.Add(ok);
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblresult.Text = "<br/>" + "Name: " + Name.Text + "<br/>" + "Email: " + Email.Text + "<br/>" + "Phone No.: " + Mobile.Text + "<br/>" + "Country: " + Country.SelectedValue + "<br/>" + "State: " + State.SelectedValue + "<br/>" + "City: " + City.SelectedValue + "<br/>" + "Certifiates: " + Cbl.SelectedValue + "<br/>" + "Gender: " + Gender.SelectedValue + "<br/>" + "DOB :" + cal1.SelectedDate.ToString();
            }
            else
            {
                lblresult.Text = "";
            }
        }

        protected void RequiredFieldValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;

            if (Cbl.SelectedIndex >= 0)
            {
                args.IsValid = true;
            }
        }

        protected void btn_cal_Click(object sender, EventArgs e)
        {
            cal1.Visible = !(cal1.Visible);
            btn_cal.Text = cal1.Visible == true ? "hide calender" : "show calender";
        }

        protected void cal1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date > DateTime.Today)
            {
                e.Day.IsSelectable = false;
            }
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}