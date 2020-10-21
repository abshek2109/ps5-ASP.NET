using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Welcome:" + Session["fname"].ToString();

             Label2.Text = "Session ID: " + Session.SessionID;
             Label2.Text += "<br>Number of Objects: " + Session.Count.ToString();
             Label2.Text += "<br>Mode: " + Session.Mode.ToString();
             Label2.Text += "<br>Is Cookieless: " + Session.IsCookieless.ToString();  Label2.Text += "<br>Is New: " + Session.IsNewSession.ToString();
             Label2.Text += "<br>Session Timeout (minutes):" + Session.Timeout.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Count;
            if (ViewState["Counter"] == null)
            {
                Count = 1;
            }
            else
            {
                Count = (int)ViewState["Counter"] + 1;
            }

            ViewState["Counter"] = Count;

            Label3.Text = "Counter: " + Count.ToString();

        }
    }
}