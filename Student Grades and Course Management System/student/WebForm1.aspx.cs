using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Diagnostics;
using System.ComponentModel;


namespace student
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string student_id = TextBox1.Text;
            string student_password = TextBox2.Text;
            if(student_id.Length == 9 & student_password.Length >= 9) 
            {
                Response.Redirect("https://localhost:44318/WebForm2.aspx");
            }
        }
    }
}