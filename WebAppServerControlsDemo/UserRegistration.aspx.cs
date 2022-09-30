using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace WebAppServerControlsDemo
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
userDataView.SetActiveView(PersonalDetails);
            }
            else
            {
                if (rdobtnYes.Checked)
                {
                    lblchquefac.Text = "ok... u have a cheque book";
                }
                else if (rdobtnNo.Checked)
                {
                    lblchquefac.Text = "do u want cheque book";
                }
             
                
            }
            

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue=="Personal")
            {
                userDataView.SetActiveView(PersonalDetails);
            }
            else if(DropDownList1.SelectedValue=="Educational")
            {
                userDataView.SetActiveView(EducationalDetails);
            }
            else
            {
                userDataView.SetActiveView(BankDetails);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(fileuploadResumeAndPhoto.FileName))
            {
                if (fileuploadResumeAndPhoto.HasFiles)
                {
                    
                    foreach (HttpPostedFile item in fileuploadResumeAndPhoto.PostedFiles)
                    {
                        string fname=item.FileName;
                        FileInfo finfo = new FileInfo(fname);
                        string ext=finfo.Extension;
                        
                        if (ext==".pdf") 
                        {
                            string s = item.FileName;
                            //string path = @"D:\Sulakshana\MphasisAugust\WebAppServerControlsDemo\WebAppServerControlsDemo\UploadedFiles\";
                                                       
                            fileuploadResumeAndPhoto.SaveAs(Server.MapPath("UploadedFiles") + "\\" + s);
                        }
                        else
                        {
                            Response.Write("U can only upload pdf");
                        }
                        
                    }
                }
                
            }
            else
            {
                Response.Write("Unable to save the file becoz no file uploaded");
            }

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtBankName.Text = ListBox1.SelectedValue;
            userDataView.SetActiveView(BankDetails);


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var crs = "";
            if (CheckBox1.Checked)
            {
                crs += CheckBox1.Text + " ";
            }
            if (CheckBox2.Checked)
            {
                crs += CheckBox2.Text + " ";
            }
            if (CheckBox3.Checked)
            {
                crs += CheckBox3.Text + " ";
            }

            lblCourseSelected.Text = crs;
        }
    }
}