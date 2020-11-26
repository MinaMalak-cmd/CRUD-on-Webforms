using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace project1
{
    public partial class ADOform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Create connection
            SqlConnection s = new SqlConnection();
            s.ConnectionString = "Data Source=.;Initial Catalog=ITI;User ID=sa;Password=***********";
            //create query
            SqlCommand cmd = new SqlCommand();
            cmd.ExecuteNonQuery();
            cmd.CommandText('');
        }
    }
}