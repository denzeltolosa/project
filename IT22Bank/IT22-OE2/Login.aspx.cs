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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string account_name, account_number, balance, user;
            user = txtUsername.Text.Trim();
            string constring = "Server =localhost; Uid=root; password= ; persistSecurityInfo=True; database=mybank_db; SslMode=none";

            MySqlConnection mycon = new MySqlConnection(constring);
            MySqlCommand cmd = null;

            try
            {
                if (user == "admin")
                {
                    cmd = new MySqlCommand("Select * from users_tbl where accountnumber =@username and password=@password", mycon);
                    cmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                    mycon.Open();
                    MySqlDataAdapter adapt = new MySqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adapt.Fill(ds);
                    mycon.Close();
                    int count = ds.Tables[0].Rows.Count;
                    if (count == 1)
                    {
                        mycon.Open();
                        MySqlDataReader read = cmd.ExecuteReader();
                        if (read.Read())
                        {
                            account_name = read["accountname"].ToString();
                            account_number = read["accountnumber"].ToString();
                            Session["accountname"] = account_name;
                            Session["accountnumber"] = account_number;                     
                        }
                        Response.Redirect("Registration.aspx");
                    }

                }
                else if(user !="admin") {
                    {
                        cmd = new MySqlCommand("Select * from depositors_tbl where accountnumber =@username and pinnumber=@password", mycon);
                        cmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
                        cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                        mycon.Open();

                        MySqlDataAdapter adapt = new MySqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        adapt.Fill(ds);
                        mycon.Close();
                        int count = ds.Tables[0].Rows.Count;

                        if (count == 1) {
                            mycon.Open();
                            MySqlDataReader read = cmd.ExecuteReader();
                            if (read.Read())
                            {
                                account_name = read["accountname"].ToString();
                                account_number = read["accountnumber"].ToString();
                                balance = read["initialdeposit"].ToString();
                                Session["accountname"] = account_name;
                                Session["accountnumber"] = account_number;
                                Session["initialdeposit"] = balance;

                            }
                            Response.Redirect("Dashboard2.aspx");
                        }
                        //else
                        {
                            {

                                //  Response.Write("<script>alert('Error Login')");
                                // }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "') </script> ");
                mycon.Close();

            }
        }
    }
}

   