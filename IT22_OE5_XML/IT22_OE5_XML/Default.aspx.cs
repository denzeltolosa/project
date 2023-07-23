using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml;

namespace IT22_OE5_XML
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

    
       protected void btnSave_Click(object sender, EventArgs e)
        {
            string filename = Server.MapPath("StudentRecord.xml");
            if (File.Exists(filename)==true) {
                //Adding new record
                XmlDocument sdoc = new XmlDocument();
                sdoc.Load(Server.MapPath("StudentRecord.xml"));

                XmlElement Student = sdoc.CreateElement("Student");

                XmlElement StudentNo = sdoc.CreateElement("StudentNo");
                XmlText xmlStudentNo = sdoc.CreateTextNode("txtStudentNo.Text");

                XmlElement FirstName = sdoc.CreateElement("FirstName");
                XmlText xmlFirstName = sdoc.CreateTextNode("txtFirstName.Text");

                XmlElement LastName = sdoc.CreateElement("LastName");
                XmlText xmlLastName = sdoc.CreateTextNode("txtLastName.Text");

                XmlElement Gender = sdoc.CreateElement("Gender");
                XmlText xmlGender = sdoc.CreateTextNode("txtGender.Text");

                XmlElement Program = sdoc.CreateElement("Program");
                XmlText xmlProgram = sdoc.CreateTextNode("txtProgram.Text");

                XmlElement ContactNo = sdoc.CreateElement("ContactNo");
                XmlText xmlContactNo = sdoc.CreateTextNode("txtContactNo.Text");

                //Add each element in the XML data structure
                StudentNo.AppendChild(xmlStudentNo);
                FirstName.AppendChild(xmlFirstName);
                LastName.AppendChild(xmlLastName);
                Gender.AppendChild(xmlGender);
                Program.AppendChild(xmlProgram);
                ContactNo.AppendChild(xmlContactNo);

                //Append this to the Student element
                Student.AppendChild(StudentNo);
                Student.AppendChild(FirstName);
                Student.AppendChild(LastName);
                Student.AppendChild(Gender);
                Student.AppendChild(Program);
                Student.AppendChild(ContactNo);

                //Append the entire Student record in the XML document file
                sdoc.DocumentElement.AppendChild(Student);

                //Save the file
                sdoc.Save(Server.MapPath("StudentRecord.xml"));


            }
            else {
                XmlTextWriter wrt = new XmlTextWriter(filename,null);
                wrt.WriteStartDocument();
                wrt.WriteStartElement("Students");
                wrt.WriteStartElement("Student");

                wrt.WriteElementString("StudentNo",txtStudentNo.Text);
                wrt.WriteElementString("FirstName", txtFirstName.Text);
                wrt.WriteElementString("LastName", txtLastName.Text);
                wrt.WriteElementString("Gender", txtGender.Text);
                wrt.WriteElementString("Course", txtProgram.SelectedItem.Text);
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
    }

}