using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\user.mdf;Integrated Security=True;User Instance=True";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * from Login";
            SqlDataReader MyReader;
            MyReader = cmd.ExecuteReader();
            //MyReader.Read();
            while (MyReader.Read())
            {
                ListBox1.Items.Add(MyReader["ID"].ToString() + " , " + MyReader["PWD"].ToString());
            }
            

            //ListBox1.Items.Add(MyReader["ID"].ToString() + " , " + MyReader["PWD"].ToString());

        }


        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String InsertSQL;
            InsertSQL = "INSERT into Login (ID , PWD) values ('" + TextBox2.Text + "','" + TextBox3.Text + "')";

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = InsertSQL;

            int added;
            added = cmd.ExecuteNonQuery();

            Label1.Text = added.ToString() + "record(s) added";


        }


    }
}