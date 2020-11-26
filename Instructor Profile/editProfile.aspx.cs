using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Instructor_Profile.Model;

namespace Instructor_Profile
{
    public partial class editProfile : System.Web.UI.Page
    {
        public void ddlFill()
        {
            InstructorDBContext db = new InstructorDBContext();
            var dept = db.Departments.ToList();
            ddl_Department.DataSource = dept;
            ddl_Department.DataTextField = "Dept_Name";
            ddl_Department.DataValueField = "Dept_Id";
            ddl_Department.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ddlFill();
                int x = int.Parse(Session["current_user"].ToString());
                InstructorDBContext db = new InstructorDBContext();
                var Ins = db.Instructors.Where(n => n.Id == x).FirstOrDefault();
                if (Ins != null)
                {
                    ddl_Department.SelectedValue = Ins.dept_Id.ToString();
                    txt_name.Text = Ins.name.ToString();
                    txt_email.Text = Ins.email.ToString();
                    txt_age.Text = Ins.age.ToString();
                }            
                
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            InstructorDBContext db = new InstructorDBContext();
            int id = int.Parse(Session["current_user"].ToString());
            Instructor Ins = db.Instructors.Where(n => n.Id == id).FirstOrDefault();
            if (Ins != null)
            {
                Ins.name = txt_name.Text;
                Ins.email = txt_email.Text;
                Ins.age = int.Parse(txt_age.Text);
                Ins.dept_Id = int.Parse(ddl_Department.SelectedValue);
            }           
            db.SaveChanges();
            Response.Redirect("~/login page.aspx");                         
        }
    }
}