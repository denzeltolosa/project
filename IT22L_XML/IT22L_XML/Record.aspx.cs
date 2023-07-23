using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml;

namespace IT22L_XML
{
    public partial class Record : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack) {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                DisplayAllRecordsFromXML();
                
                
            }            
        }
     
       
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string filename = Server.MapPath("StudentRecord.xml");
          

            if (File.Exists(filename) == true)
            {
                //Adding new record
                XmlDocument sdoc = new XmlDocument();
                sdoc.Load(Server.MapPath("StudentRecord.xml"));


                XmlElement Student = sdoc.CreateElement("Student");

                XmlElement StudentNo = sdoc.CreateElement("StudentNo");
                XmlText xmlStudentNo = sdoc.CreateTextNode(txtStudentNo.Text);

                XmlElement FirstName = sdoc.CreateElement("FirstName");
                XmlText xmlFirstName = sdoc.CreateTextNode(txtFirstName.Text);

                XmlElement LastName = sdoc.CreateElement("LastName");
                XmlText xmlLastName = sdoc.CreateTextNode(txtLastName.Text);

                XmlElement Gender = sdoc.CreateElement("Gender");
                XmlText xmlGender = sdoc.CreateTextNode(txtGender.SelectedItem.Text);

                XmlElement Course = sdoc.CreateElement("Course");
                XmlText xmlCourse = sdoc.CreateTextNode(txtCourse.SelectedItem.Text);

                XmlElement ContactNo = sdoc.CreateElement("ContactNo");
                XmlText xmlContactNo = sdoc.CreateTextNode(txtContactNo.Text);

                //Add each element in the XML data structure
                StudentNo.AppendChild(xmlStudentNo);
                FirstName.AppendChild(xmlFirstName);
                LastName.AppendChild(xmlLastName);
                Gender.AppendChild(xmlGender);
                Course.AppendChild(xmlCourse);
                ContactNo.AppendChild(xmlContactNo);

                //Append this to the Student element
                Student.AppendChild(StudentNo);
                Student.AppendChild(FirstName);
                Student.AppendChild(LastName);
                Student.AppendChild(Gender);
                Student.AppendChild(Course);
                Student.AppendChild(ContactNo);

                //Append the entire Student record in the XML document file
                sdoc.DocumentElement.AppendChild(Student);

                //Save the file
                sdoc.Save(Server.MapPath("StudentRecord.xml"));
                DisplayAllRecordsFromXML();

               

            }
            else
            {
                XmlTextWriter wrt = new XmlTextWriter(filename, null);
                wrt.WriteStartDocument();
                wrt.WriteStartElement("Students");
                wrt.WriteStartElement("Student");

                wrt.WriteElementString("StudentNo", txtStudentNo.Text);
                wrt.WriteElementString("FirstName", txtFirstName.Text);
                wrt.WriteElementString("LastName", txtLastName.Text);
                wrt.WriteElementString("Gender", txtGender.SelectedItem.Text);
                wrt.WriteElementString("Course", txtCourse.SelectedItem.Text);
                wrt.WriteElementString("ContactNo", txtContactNo.Text);
                wrt.WriteEndElement();
                wrt.WriteEndElement();
                wrt.WriteEndDocument();
                wrt.Close();
            }
        }


        private void DisplayAllRecordsFromXML()
        {
            System.Data.DataSet s_data = new System.Data.DataSet();
            s_data.ReadXml(Server.MapPath("StudentRecord.xml"));

            GridView1.DataSource = s_data;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            DisplayAllRecordsFromXML();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label StudentNo = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblStudentNo"));
            XmlDocument sdoc = new XmlDocument();
            sdoc.Load(Server.MapPath("StudentRecord.xml"));
            XmlNodeList NodeList = sdoc.SelectNodes("/Students/Student");
            foreach (XmlNode item in NodeList)
            {
                if (item.ChildNodes[0].InnerText == StudentNo.Text){
                    item.ParentNode.RemoveChild(item);
                   

                }
            }

            //save
            sdoc.Save(Server.MapPath("StudentRecord.xml"));
            DisplayAllRecordsFromXML();
        }


        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //Find all the controls in our input form
            TextBox StudentNo = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtStudentNo"));
            TextBox FirstName = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtFirstName"));
            TextBox LastName = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtLastName"));
            DropDownList Gender = ((DropDownList)GridView1.Rows[e.RowIndex].FindControl("txtGender"));
            DropDownList Course = ((DropDownList)GridView1.Rows[e.RowIndex].FindControl("txtCourse"));
            TextBox ContactNo = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtContactNo"));

            //Update Record in XML File
            XmlDocument xdoc = new XmlDocument();
            xdoc.Load(Server.MapPath("StudentRecord.xml"));
            XmlNodeList Nodelist = xdoc.SelectNodes("/Students/Student");
            foreach (XmlNode item in Nodelist)
            {
                if (item.ChildNodes[0].InnerText == StudentNo.Text){
                    item.ChildNodes[1].InnerText = FirstName.Text;
                    item.ChildNodes[2].InnerText = LastName.Text;
                    item.ChildNodes[3].InnerText = Gender.Text;
                    item.ChildNodes[4].InnerText = Course.SelectedItem.Text;
                    item.ChildNodes[5].InnerText = ContactNo.Text;
                }
            }

            xdoc.Save(Server.MapPath("StudentRecord.xml"));
            GridView1.EditIndex = -1;
             DisplayAllRecordsFromXML();

        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            DisplayAllRecordsFromXML();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            DisplayAllRecordsFromXML();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtStudentNo.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtGender.Text = "";
            txtCourse.Text = "";
            txtContactNo.Text = "";

        }

      
    }
}
   