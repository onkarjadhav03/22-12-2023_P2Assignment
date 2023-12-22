using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment11
{
    public partial class Articles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("server=DESKTOP-VDRMSHO;database=ContentDb;trusted_connection=true");
                SqlCommand cmd = new SqlCommand("select * from Articles", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                lblmsg.Text = "number of articles" + ds.Tables[0].Rows.Count;
                gvarticle.DataSource = ds.Tables[0];
                gvarticle.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                lblmsg.Text = "error" + ex.Message;
            }
        }

        protected void gvarticle_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}