using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Instructor_Profile.Model;
namespace Instructor_Profile
{
    public partial class Signup_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlFill();
                lbl_warning.Visible = false;
            }            
            
        }
        public void ddlFill()
        {
            InstructorDBContext db = new InstructorDBContext();
            var dept = db.Departments.ToList();
            ddl_Department.DataSource = dept;
            ddl_Department.DataTextField = "Dept_Name";
            ddl_Department.DataValueField = "Dept_Id";
            ddl_Department.DataBind();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {                          
            string cvPath = "~/attachments/" + fu_cv.FileName;
            fu_cv.SaveAs(Server.MapPath(cvPath));
            string imgPath = "~/attachments/" + fu_photo.FileName;
            fu_photo.SaveAs(Server.MapPath(imgPath));
            Instructor I = new Instructor
            {
                Id=0,
                name = txt_name.Text,
                email=txt_email.Text,
                password=txt_pass.Text,
                cv= cvPath,
                photo= imgPath,
                age=int.Parse(txt_age.Text),
                dept_Id=int.Parse(ddl_Department.SelectedValue),
            };
            InstructorDBContext db = new InstructorDBContext();
            var flag=db.Instructors.Add(I);
            db.SaveChanges(); 
            if (flag != null)
            {
                txt_age.Text = txt_email.Text = txt_name.Text
                    = txt_age.Text = "";
                lbl_warning.Visible = true;
                lbl_warning.Text = "A new Instructor has been added successfully";

            }
            else
                lbl_warning.Text = "Please fill all fields";           
           
        }

        protected void btn_redirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/departmentData.aspx");
        }

        protected void btn_redirect_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/departmentData.aspx");
        }
    }
}