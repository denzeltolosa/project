﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace IT22_OE2
{
    public partial class UserAccount : System.Web.UI.Page
    {
        String ac_number;
        string constring = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            ac_number = "" + Session["accountnumber"];
            lblUser.Text = "" + Session["accountname"];
            myAccount();

        }

        protected void myAccount()
        {
            string account_name, account_number,account_type, balance, bal_format;

            MySqlConnection mycon = new MySqlConnection(constring);
            MySqlCommand cmd = new MySqlCommand();
            cmd = new MySqlCommand("Select * from depositors_tbl where accountnumber ='" + ac_number + "' ", mycon);
            mycon.Open();
            MySqlDataAdapter adapt = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapt.Fill(ds);
            mycon.Close();
            int count = ds.Tables[0].Rows.Count;

            //if count is equal to 1 login
            if (count == 1)
            {
                mycon.Open();
                MySqlDataReader read = cmd.ExecuteReader();
                if (read.Read())
                {
                    account_name = read["accountname"].ToString();
                    account_number = read["accountnumber"].ToString();
                    account_type = read["accounttype"].ToString();
                    balance = read["balance"].ToString();
                    bal_format = Convert.ToDecimal(balance).ToString("P ###,###.00");
                    lblAccountName.Text = account_name;
                    lblAccountNumber.Text = account_number;
                    lblAccountType.Text = account_type;
                    lblAvailableBalance.Text = bal_format;
                }
            }
        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            {
                string constring = "Server =localhost; Uid=root; password= ; persistSecurityInfo=True; database=mybank_db; SslMode=none";
                MySqlConnection mycon = new MySqlConnection(constring);
                DataTable view = new DataTable();
                MySqlCommand com = null;

                try
                {
                    com = new MySqlCommand("select * from transaction_tbl where accountnumber='" + ac_number + "' ", mycon);
                    mycon.Open();
                    view.Load(com.ExecuteReader());
                    mycon.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "') </script>");
                    mycon.Close();
                }
                GridView1.DataSource = view;
                GridView1.DataBind();
                 }
        }
    }
}