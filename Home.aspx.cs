using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Globalization;

public partial class Home : System.Web.UI.Page
{
    /*protected void Page_PreInit(object sender, EventArgs e)
     {
         Page.MasterPageFile = "~/MasterPages/blank.master";
     }*/
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            descb_TextChanged(descb, null);
            doc_name_TextChanged(doc_name, null);
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string[] str = new string[1000];
        string street = string.Empty;
        string city = string.Empty;
        string state = string.Empty;
        int zip = 0;
        string sex = RadioButtonList1.SelectedValue.ToString();


        string ssn1 = ssn.Text;
        string paF = patF.Text;
        string paL = patL.Text;
        string mob = mobile.Text;
        string cal = Calendar1.Text;


        if (paF != " " && paL != " " && address.Text != " " && descb.Text != " " && cal != "" && sex != " " && ssn1 != " " && mob != " ")

        {

            string st = ConfigurationManager.ConnectionStrings["HMDabaseConnectionString1"].ConnectionString;


            using (SqlConnection con = new SqlConnection(st))
            {
                DateTime dt = Convert.ToDateTime(cal);
                DateTime dateonly = dt.Date;

                str = address.Text.Split(',');
                street = str[0];
                city = str[1];
                state = str[2];
                zip = Convert.ToInt32(str[3]);


                SqlCommand cmd = new SqlCommand("insert into Patients values( '" + ssn1 + "','" + paF + "','" + paL + "','" + dateonly + "','" + sex + "','" + street + "','" + city + "','" + state + "','" + zip + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                SqlCommand cmd1 = new SqlCommand("insert into Pat_Phone values( '" + ssn1 + "','" + mob + "')", con);

                cmd1.ExecuteNonQuery();

                Session["value"] = paL;
                Session["doctor_name"] = doc_name.Text;
                Session["app_date"] = shifts.Text;
                //Button1.PostBackUrl = "~/confirm.aspx";
                Response.Redirect("confirm.aspx");
                /*disperror.ForeColor = System.Drawing.Color.Green;
                disperror.Text = "Registration Successfull";*/



            }

        }

        else
        {
            disperror.ForeColor = System.Drawing.Color.Red;
            disperror.Text = "* All Fields are mandataory";

        }

    }





    protected void descb_TextChanged(object sender, EventArgs e)
    {
        string st = ConfigurationManager.ConnectionStrings["HMDabaseConnectionString1"].ConnectionString;
        SqlConnection con = new SqlConnection(st);
        String prob = descb.Text;
        try
        {
            SqlCommand cmd = new SqlCommand("SELECT  Name FROM [desc] where problem='" + prob + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr != null)
            {
                while (dr.Read())
                    doc_name.Text = dr.GetString(0);
            }
        }
        catch (SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {

            con.Close();

        }


    }

    protected void doc_name_TextChanged(object sender, EventArgs e)
    {
        string st = ConfigurationManager.ConnectionStrings["HMDabaseConnectionString1"].ConnectionString;
        SqlConnection con = new SqlConnection(st);

        String doc = doc_name.Text;
        con.Open();



        string id = string.Empty;
        string name = string.Empty;
        string newName = string.Empty;
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(st);
        try
        {

            connection.Open();

            string sqlStatement = "SELECT * FROM  [Has_Shifts],[desc] where mssn=eSSN and name='" + doc + "'";
            SqlCommand sqlCmd = new SqlCommand(sqlStatement, connection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

            sqlDa.Fill(dt);
            shifts.Items.Clear();
            if (dt.Rows.Count > 0)
            {

                for (int i = 0; i < dt.Rows.Count; i++)
                {

                    DateTime sdate = Convert.ToDateTime(dt.Rows[i]["sDate"]);

                    id = sdate.ToString("MM/dd/yyyy");
                    name = dt.Rows[i]["sTime"].ToString();
                    newName = id + "  " + name;
                    shifts.Items.Add(new ListItem(newName, id));
                }


            }

        }
        catch (SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {

            connection.Close();

        }
    }


}
