using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace IT22_OE2
{
    public partial class Registration : System.Web.UI.Page
    {

        void clear() {
            txtAccountNumber.Text = "";
            txtAccountName.Text = "";
            txtAccountType.Text = "";        
            txtBalance.Text = "";
            txtInitialDeposit.Text = "";
            txtPinNumber.Text = "";

           

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserDetail.Text = "User: " + Session["accountname"];
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string account_no = Request.Form.Get("txtAccountNumber");
            string account_na = Request.Form.Get("txtAccountName");
            string account_ty = Request.Form.Get("txtAccountType");
            string balance = Request.Form.Get("txtBalance");
            string initialdeposit = Request.Form.Get("txtInitialDeposit");
            string pinnumber = Request.Form.Get("txtPinNumber");

            string constring = "Server =localhost; Uid=root; password= ; persistSecurityInfo=True; database=mybank_db; SslMode=none";

            MySqlConnection mycon = new MySqlConnection(constring);
            MySqlCommand com = null;

            try
            {
                com = new MySqlCommand("insert into depositors_tbl(accountnumber,accountname,accounttype,initialdeposit,pinnumber,balance) values(@a1,@a2,@a3,@a4,@a5,@a6)",mycon);
                com.Parameters.AddWithValue("@a1",account_no);
                com.Parameters.AddWithValue("@a2",account_na);
                com.Parameters.AddWithValue("@a3",account_ty);
                com.Parameters.AddWithValue("@a4",initialdeposit);
                com.Parameters.AddWithValue("@a5",pinnumber);
                com.Parameters.AddWithValue("@a6", balance);
                mycon.Open();
                com.ExecuteNonQuery();
                mycon.Close();
            }
            catch (Exception ex) {
                Response.Write("<script>alert('" + ex.Message + "') </script>");
                mycon.Close();

            }
            Response.Write("<script>alert('Bank Account succesfully created!') </script>");
            clear();
        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            string constring = "Server =localhost; Uid=root; password= ; persistSecurityInfo=True; database=mybank_db; SslMode=none";
            MySqlConnection mycon = new MySqlConnection(constring);
            DataTable view = new DataTable();
            MySqlCommand com = null;

            try {
                com = new MySqlCommand("select * from depositors_tbl",mycon);
                mycon.Open();
                view.Load(com.ExecuteReader());
                mycon.Close();   
            }
            catch (Exception ex) {
                Response.Write("<script>alert('" + ex.Message + "') </script>");
                    mycon.Close();

            }
            GridView1.DataSource = view;
            GridView1.DataBind();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}