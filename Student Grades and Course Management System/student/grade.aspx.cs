using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace student
{
    public partial class grade : System.Web.UI.Page
    {
        string connetionString = "";
        SqlConnection connection = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            connetionString = "Data Source=C1-030\\SQLEXPRESS;Initial Catalog=Cheng_Yi;Integrated Security=True";
            connection = new SqlConnection(connetionString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string student_number = TextBox1.Text;
            string sql = "select * from major_course";
            Label1.Text = " ";
            Label2.Text = "學年   學期   課程編號   課程名稱   學分數   成績";
            string course = Button1.Text;

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                   if(dataReader.GetSqlString(0) == student_number & dataReader.GetSqlString(1) == course) 
                    {
                        Label1.Text += dataReader.GetValue(2) + " " + dataReader.GetValue(3) + "  " + dataReader.GetValue(4) + " " + dataReader.GetValue(5) + " " + dataReader.GetValue(6) + "  " + dataReader.GetValue(7) + "<br/>";
                    }
                }
                dataReader.Close();
                command.Dispose();
                connection.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            string student_number = TextBox1.Text;
            string sql = "select * from optional_course";
            Label1.Text = " ";
            Label2.Text = "學年   學期   課程編號   課程名稱   學分數   成績";
            string course = Button2.Text;

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    if (dataReader.GetSqlString(0) == student_number & dataReader.GetSqlString(1) == course)
                    {
                        Label1.Text += dataReader.GetValue(2) + " " + dataReader.GetValue(3) + "  " + dataReader.GetValue(4) + " " + dataReader.GetValue(5) + " " + dataReader.GetValue(6) + "  " + dataReader.GetValue(7) + "<br/>";
                    }
                }
                dataReader.Close();
                command.Dispose();
                connection.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string student_number = TextBox1.Text;
            string sql = "select * from core_course";
            Label1.Text = " ";
            Label2.Text = "學年   學期   課程編號   課程名稱   學分數   成績";
            string course = Button3.Text;

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    if (dataReader.GetSqlString(0) == student_number & dataReader.GetSqlString(1) == course)
                    {
                        Label1.Text += dataReader.GetValue(2) + " " + dataReader.GetValue(3) + "  " + dataReader.GetValue(4) + " " + dataReader.GetValue(5) + " " + dataReader.GetValue(6) + "  " + dataReader.GetValue(7) + "<br/>";
                    }
                }
                dataReader.Close();
                command.Dispose();
                connection.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string student_number = TextBox1.Text;
            string sql = "select * from general_course";
            Label1.Text = " ";
            Label2.Text = "學年   學期   課程編號   課程名稱   學分數   成績";
            string course = Button4.Text;

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    if (dataReader.GetSqlString(0) == student_number & dataReader.GetSqlString(1) == course)
                    {
                        Label1.Text += dataReader.GetValue(2) + " " + dataReader.GetValue(3) + "  " + dataReader.GetValue(4) + " " + dataReader.GetValue(5) + " " + dataReader.GetValue(6) + "  " + dataReader.GetValue(7) + "<br/>";
                    }
                }
                dataReader.Close();
                command.Dispose();
                connection.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string student_number = TextBox1.Text;
            string sql = "select * from pe_course";
            Label1.Text = " ";
            Label2.Text = "學年   學期   課程編號   課程名稱   學分數   成績";
            string course = Button5.Text;

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    if (dataReader.GetSqlString(0) == student_number & dataReader.GetSqlString(1) == course)
                    {
                        Label1.Text += dataReader.GetValue(2) + " " + dataReader.GetValue(3) + "  " + dataReader.GetValue(4) + " " + dataReader.GetValue(5) + " " + dataReader.GetValue(6) + "  " + dataReader.GetValue(7) + "<br/>";
                    }
                }
                dataReader.Close();
                command.Dispose();
                connection.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string student_number = TextBox1.Text;
            string sql = "select * from english_course";
            Label1.Text = " ";
            Label2.Text = "學年   學期   課程編號   課程名稱   學分數   成績";
            string course = Button6.Text;

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    if (dataReader.GetSqlString(0) == student_number & dataReader.GetSqlString(1) == course)
                    {
                        Label1.Text += dataReader.GetValue(2) + " " + dataReader.GetValue(3) + "  " + dataReader.GetValue(4) + " " + dataReader.GetValue(5) + " " + dataReader.GetValue(6) + "  " + dataReader.GetValue(7) + "<br/>";
                    }
                }
                dataReader.Close();
                command.Dispose();
                connection.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string student_number = TextBox1.Text;
            string sql = "select * from military_course";
            Label1.Text = " ";
            Label2.Text = "學年   學期   課程編號   課程名稱   學分數   成績";
            string course = Button7.Text;

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    if (dataReader.GetSqlString(0) == student_number & dataReader.GetSqlString(1) == course)
                    {
                        Label1.Text += dataReader.GetValue(2) + " " + dataReader.GetValue(3) + "  " + dataReader.GetValue(4) + " " + dataReader.GetValue(5) + " " + dataReader.GetValue(6) + "  " + dataReader.GetValue(7) + "<br/>";
                    }
                }
                dataReader.Close();
                command.Dispose();
                connection.Close();
                dataReader.Close();
                command.Dispose();
                connection.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            string student_number = TextBox1.Text;
            string sql = "select * from outer_course";
            Label1.Text = " ";
            Label2.Text = "學年   學期   課程編號   課程名稱   學分數   成績";
            string course = Button8.Text;

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    if (dataReader.GetSqlString(0) == student_number & dataReader.GetSqlString(1) == course)
                    {
                        Label1.Text += dataReader.GetValue(2) + " " + dataReader.GetValue(3) + "  " + dataReader.GetValue(4) + " " + dataReader.GetValue(5) + " " + dataReader.GetValue(6) + "  " + dataReader.GetValue(7) + "<br/>";
                    }
                }
                dataReader.Close();
                command.Dispose();
                connection.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            string student_number = TextBox1.Text;
            string sql = "select * from topic_course";
            Label1.Text = " ";
            Label2.Text = "學年   學期   課程編號   課程名稱   學分數   成績";
            string course = Button9.Text;

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    if (dataReader.GetSqlString(0) == student_number & dataReader.GetSqlString(1) == course)
                    {
                        Label1.Text += dataReader.GetValue(2) + " " + dataReader.GetValue(3) + "  " + dataReader.GetValue(4) + " " + dataReader.GetValue(5) + " " + dataReader.GetValue(6) + "  " + dataReader.GetValue(7) + "<br/>";
                    }
                }
                dataReader.Close();
                command.Dispose();
                connection.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            string student_number = TextBox1.Text;
            string sql = "select * from transcript";
            Label1.Text = " ";
            Label2.Text = "學號  姓名  學系  班級  學年  學年總學分  學年總平均   操行總平均   班排   系排";
            string course = Button10.Text;
            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    if (dataReader.GetSqlString(0) == student_number)
                    {
                        Label1.Text += dataReader.GetValue(0) + " " + dataReader.GetValue(1) + "  " + dataReader.GetValue(2) + " " + dataReader.GetValue(3) + " " + dataReader.GetValue(4) + "  " + dataReader.GetValue(5) + " " + dataReader.GetValue(6) + "  " + dataReader.GetValue(7) + " " + dataReader.GetValue(8) + " " + dataReader.GetValue(9) + "<br/>";
                    }
                }
                dataReader.Close();
                command.Dispose();
                connection.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
        }
    }
}