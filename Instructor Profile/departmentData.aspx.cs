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
    public partial class departmentData : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlFill();
                InstructorDBContext db = new InstructorDBContext();
                int y = int.Parse(ddl_dept.SelectedValue);
                var Inst = db.Instructors.Where(n => n.dept_Id == y)
                    .Select(n => new { name = n.name, age = n.age, email = n.email, department = n.Department.Dept_Name}).ToList();
                gv_InsData.DataSource = Inst;
                gv_InsData.DataBind();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
        protected void ddl_dept_SelectedIndexChanged(object sender, EventArgs e)
        {         
        }
        public void ddlFill()
        {
            InstructorDBContext db = new InstructorDBContext();
            var dept = db.Departments.ToList();
            ddl_dept.DataSource = dept;
            ddl_dept.DataTextField = "Dept_Name";
            ddl_dept.DataValueField = "Dept_Id";
            ddl_dept.DataBind();
        }
        protected void ddl_dept_SelectedIndexChanged1(object sender, EventArgs e)
        {
            InstructorDBContext db = new InstructorDBContext();
            int y = int.Parse(ddl_dept.SelectedValue);
            var Inst = db.Instructors.Where(n => n.dept_Id == y)
                    .Select(n => new { name = n.name, age = n.age, email = n.email, department = n.Department.Dept_Name }).ToList(); 
            gv_InsData.DataSource = Inst;
            gv_InsData.DataBind();
            
                       
        }

        protected void btn_redirect_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/login page.aspx");
        }
    }
}