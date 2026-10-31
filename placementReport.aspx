<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="PlacementReport.aspx.cs"
Inherits="PlacementReport" %>

<%@ Register Assembly="CrystalDecisions.Web"
Namespace="CrystalDecisions.Web"
TagPrefix="CR" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Placement Report</title>
</head>
<body>
<form id="form1" runat="server">

    <h2>Student Placement Report</h2>

    <CR:CrystalReportViewer ID="CrystalReportViewer1"
        runat="server"
        AutoDataBind="true" />

</form>
</body>
</html>
