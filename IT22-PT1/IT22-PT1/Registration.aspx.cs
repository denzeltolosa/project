using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT22_PT1
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //lblResult.Text = "Full Name :" + txtFirstName.Text + "" + txtLastName.Text + "<br> Email Address :" + txtEmailAddress.Text;
            Server.Transfer("Welcome.aspx");
        }

        public string Firstname { 
        get {
                return txtFirstName.Text;
            }
        }
        public string Lastname
        {
            get {
                return txtLastName.Text;
            }
        }
        public string Email
        {
            get
            {
                return txtEmailAddress.Text;
            }
        }
        public string ContactNumber
        {
            get
            {
                return txtContactNumber.Text;
            }
        }
        public string Gender
        {
            get
            {
                return txtGender.Text;
            }
        }
        public string Province
        {
            get
            {
                return txtProvince.Text;
            }
        }
        public string Country
        {
            get
            {
                return txtCountry.Text;
            }
        }
        public string Username
        {
            get
            {
                return txtUsername.Text;
            }
        }
        public string Password
        {
            get
            {
                return txtPassword.Text;
            }
        }


    }
}