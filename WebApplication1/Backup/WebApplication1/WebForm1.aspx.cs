using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\reg.mdf;Integrated Security=True;User Instance=True";
            
            con.Open();

            Session["fname"] = TextBox1.Text;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * from Register";
            SqlDataReader MyReader;
            MyReader = cmd.ExecuteReader();
            while (MyReader.Read())
            {
                ListBox1.Items.Add(MyReader["fname"].ToString() + " , " + MyReader["lname"].ToString() + " , " + MyReader["college"].ToString() + " , " + MyReader["age"].ToString());
            }
        }
      
        protected void Button1_Click(object sender, EventArgs e)
        {
            String InsertSQL;
            InsertSQL = "INSERT into Register (fname, lname, college, age) values ('"+TextBox1.Text+"','"+TextBox2.Text+"' , '"+TextBox3.Text+"' , '"+TextBox5.Text+"')";


            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = InsertSQL;

            int added;
            added = cmd.ExecuteNonQuery();

            Label6.Text = added.ToString() + "Registration succesfull";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }



    }
}
     
        



   
