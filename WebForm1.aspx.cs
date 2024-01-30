using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace task_29th
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lblinfo.Visible = false;
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Lblinfo.Visible = true;
            Lblinfo.Text += "<br/> Registration Done!!!";
            Lblinfo.Text += "CustomerName: " + TXTname.Text;
            Lblinfo.Text += "<br/> CustomerMobile:" + TxtMobile.Text;
            Lblinfo.Text += "<br/> Email:" + TxtEmail.Text;
            Lblinfo.Text += "<br/> Password:" + TxtPassword.Text;

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = TXTname.Text.Length >= 6;

        }
    }
}