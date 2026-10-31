using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PlacementDashboard : System.Web.UI.Page
{
    string cs = ConfigurationManager
        .ConnectionStrings["PlacementDB"]
        .ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadDashboard();
        }
    }

    void LoadDashboard()
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            string query = "SELECT * FROM Students";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();

            int total = dt.Rows.Count;
            int placed = 0;

            foreach (DataRow row in dt.Rows)
            {
                if (row["PlacementStatus"].ToString() == "Placed")
                    placed++;
            }

            double percentage = total > 0
                ? (placed * 100.0 / total)
                : 0;

            lblTotal.Text = "Total Students: " + total;
            lblPlaced.Text = "Placed Students: " + placed;
            lblPercentage.Text = "Placement Percentage: "
                + percentage.ToString("0.00") + "%";
        }
    }

    protected void btnReport_Click(object sender, EventArgs e)
    {
        Response.Redirect("PlacementReport.aspx");
    }
}
