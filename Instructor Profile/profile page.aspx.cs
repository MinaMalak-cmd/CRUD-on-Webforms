using System;
using Instructor_Profile.Model;
using System.Linq;
namespace Instructor_Profile
{
    public partial class profile_page : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            InstructorDBContext db = new InstructorDBContext();
            int id =int.Parse(Session["current_user"].ToString());
            var I2 = db.Instructors.Where(I=>I.Id==id).FirstOrDefault();
            if(I2 != null)
            {
                lbl_name.Text = I2.name.ToString();
                lbl_age.Text = I2.age.ToString();
                lbl_email.Text = I2.email.ToString();
                img.ImageUrl = I2.photo.ToString();
                hl_cv.NavigateUrl = I2.cv.ToString();
            }            
                       
        }

        protected void btn_editprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/editProfile.aspx");
        }
    }
}