using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class design : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
           
            this.FillData();
        }
    }


   
    protected void FillData()
    {
        
     
        DataTable dt = dbcls.RETURN_DT("select * from MSTR_SWITCH");
        
        int maxLevel = Convert.ToInt32(dt.Compute("max([SLEVEL])", string.Empty));


        if (dt.Rows.Count > 0)
        {
            dvRes.InnerHtml = "<table border='1' style='width:100%;'>";

            for (int i = 0; i <= maxLevel-1; i++)
            {
                int lvl = i + 1;
                DataRow[] dr = dt.Select("SLEVEL="+ lvl.ToString(),"SEQ ASC");
                dvRes.InnerHtml += "<tr>";
                if (dr.Length > 0)
                {
                    dvRes.InnerHtml += "<td><table style='width:100%; text-align:center;'><tr>";
                    for (int j = 0; j <= dr.Length - 1; j++)
                    {
                        string buttonID = dr[j]["ID"].ToString();
                       
                        string parents = getAllParents(buttonID);
                        dvRes.InnerHtml += "<td style='text-align:center;padding:10px;'><input id='btn"+ buttonID + "' class='btn btn-primary' type='button' value='" + dr[j]["SNAME"].ToString() + "\n"+ dr[j]["IP"].ToString() + "\n" + dr[j]["MAKE"].ToString() + "\n" + dr[j]["MODEL"].ToString() + "' onclick=\"changeColor('"+ parents + "')\" /></input><br /><a class='btn btn-link' href='manage.aspx?id=" + dr[j]["ID"].ToString()+"'>Manage</a> | Check Status</td>";
                        
                    }
                    dvRes.InnerHtml += "</tr></table></td>";
                }
                else
                {
                    dvRes.InnerHtml += "<td>&nbsp;</td>";
                }
                dvRes.InnerHtml += "</tr>";

            }
            dvRes.InnerHtml += "</table>";
        }
    }


    protected string getAllParents(string ID)
    {
        string retVal = string.Empty;
        DataTable dt = dbcls.RETURN_DT("select * from MSTR_SWITCH where ID="+ID);
        string IDD = dt.Rows[0]["PARENT_ID"].ToString();
        
        while (dt.Rows.Count != 0)
            {
            dt.Clear();
                dt = dbcls.RETURN_DT("select * from MSTR_SWITCH where ID="+IDD);
               if(dt.Rows.Count > 0)
            {
                IDD = dt.Rows[0]["PARENT_ID"].ToString();
                retVal += dt.Rows[0]["ID"].ToString() + ",";
            }    
            }
        return retVal + ID;
    }
}