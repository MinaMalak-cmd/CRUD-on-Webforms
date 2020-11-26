using Instructor_Profile.Model;
using System;
using System.Linq;
namespace Instructor_Profile
{
    public partial class login_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbl_warning.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {            
            InstructorDBContext db = new InstructorDBContext();
            var I = db.Instructors.Where(n => n.name == txt_name.Text && n.password == txt_pass.Text).SingleOrDefault();
            if (I != null)
            {
                Session.Add("current_user", I.Id);
                Response.Redirect("~/profile page.aspx");
            }

            else
            {
                lbl_warning.Visible = true;
                lbl_warning.Text = "Failed";
            }
                

        }
    }
}