using System;
using CrystalDecisions.CrystalReports.Engine;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class PlacementReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ReportDocument report = new ReportDocument();

            report.Load(Server.MapPath("PlacementReport.rpt"));

            string cs = ConfigurationManager
                .ConnectionStrings["PlacementDB"]
                .ConnectionString;

            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter(
                "SELECT * FROM Students", con);

            DataTable dt = new DataTable();
            da.Fill(dt);

            report.SetDataSource(dt);

            CrystalReportViewer1.ReportSource = report;
        }
    }
}
