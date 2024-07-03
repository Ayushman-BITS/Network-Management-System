using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            fillParent();
        }
    }

    protected void fillParent()
    {
        DataTable dt = dbcls.RETURN_DT("Select ID,SNAME from MSTR_SWITCH");
        DropDownList2.DataSource = dt;
        DropDownList2.DataTextField = "SNAME";
        DropDownList2.DataValueField = "ID";
        DropDownList2.DataBind();
      
        
        
        DropDownList2.Items.Insert(0, new ListItem("Select Switch","0"));
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("data source=.;uid=sa;pwd=server;database=NMS;pooling=false;");
        con.Open();
        SqlCommand com = new SqlCommand("insert into MSTR_SWITCH(SNAME,IP,SLEVEL,PARENT_ID,MAKE,MODEL,STATUS,SEQ)values(@SNAME,@IP,@SLEVEL,@PARENT_ID,@MAKE,@MODEL,@STATUS,@SEQ)",con);
        com.Parameters.AddWithValue("@SNAME",TextBox7.Text);
        com.Parameters.AddWithValue("@MAKE", TextBox8.Text);
        com.Parameters.AddWithValue("@MODEL", TextBox9.Text);
        com.Parameters.AddWithValue("@IP", TextBox5.Text);
        com.Parameters.AddWithValue("@PARENT_ID", DropDownList2.SelectedValue.ToString());
        com.Parameters.AddWithValue("@SLEVEL", DropDownList1.SelectedValue.ToString());
        com.Parameters.AddWithValue("@STATUS","1");
        com.Parameters.AddWithValue("@SEQ", TextBox10.Text);
        com.ExecuteNonQuery();
        con.Close();
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully inserted');", true);
               
    }
    
   
    protected void btnGoToDisplayPage_Click(object sender, EventArgs e)
    {
        Response.Redirect("DisplayPage.aspx");
    }






    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("data source=.;uid=sa;pwd=server;database=NMS;pooling=false;");
        con.Open();
        SqlCommand com = new SqlCommand("Update MSTR_SWITCH set SNAME=@SNAME,IP=@IP,SLEVEL=@SLEVEL,PARENT_ID=@PARENT_ID,MAKE=@MAKE,MODEL=@MODEL,STATUS=@STATUS,SEQ=@SEQ where ID=@ID", con);
        com.Parameters.AddWithValue("@ID", TextBox6.Text);
        com.Parameters.AddWithValue("@SNAME", TextBox7.Text);
        com.Parameters.AddWithValue("@MAKE", TextBox8.Text);
        com.Parameters.AddWithValue("@MODEL", TextBox9.Text);
        com.Parameters.AddWithValue("@IP", TextBox5.Text);
        com.Parameters.AddWithValue("@PARENT_ID", DropDownList2.SelectedValue.ToString());
        com.Parameters.AddWithValue("@SLEVEL", DropDownList1.SelectedValue.ToString());
        com.Parameters.AddWithValue("@STATUS", "1");
        com.Parameters.AddWithValue("@SEQ", TextBox10.Text);
        com.ExecuteNonQuery();
        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
    SqlConnection con = new SqlConnection("data source=.;uid=sa;pwd=server;database=NMS;pooling=false;");
    con.Open();
    SqlCommand com = new SqlCommand("Delete MSTR_SWITCH where ID=@ID and IP=@IP;", con);
    com.Parameters.AddWithValue("@ID", TextBox6.Text);
    com.Parameters.AddWithValue("@IP", TextBox5.Text);
    com.ExecuteNonQuery();
    con.Close();
    }
    



    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("data source=.;uid=sa;pwd=server;database=NMS;pooling=false;");
        con.Open();
        SqlCommand com = new SqlCommand("Delete MSTR_SWITCH; DBCC CHECKIDENT('MSTR_SWITCH', RESEED, 0);", con);
        com.ExecuteNonQuery();
        con.Close();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("design.aspx");
    }
}