using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT22_PT1
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            /*
            lblFirstname.Text = ((TextBox)result.FindControl("txtFirstName")).Text;
            lblLastname.Text = ((TextBox)result.FindControl("txtLastName")).Text;
            lblEmailAddress.Text = ((TextBox)result.FindControl("txtEmailAddress")).Text;
            */
            if (!IsPostBack)
            {
                Page result = (Page)Context.Handler;
                if (result is Registration)
                {
                    lblFirstname.Text = ((Registration)result).Firstname;
                    lblLastname.Text = ((Registration)result).Lastname;
                    lblEmailAddress.Text = ((Registration)result).Email;
                    lblContactNumber.Text = ((Registration)result).ContactNumber;
                    lblGender.Text = ((Registration)result).Gender;
                    lblProvince.Text = ((Registration)result).Province;
                    lblCountry.Text = ((Registration)result).Country;
                    lblUsername.Text = ((Registration)result).Username;
                    lblPassword.Text = ((Registration)result).Password;


                }
            }
        }
    }
}