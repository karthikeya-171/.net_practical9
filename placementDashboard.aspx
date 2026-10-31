<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="PlacementDashboard.aspx.cs"
Inherits="PlacementDashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Placement Dashboard</title>
</head>
<body>
<form id="form1" runat="server">

    <h2>College Placement Dashboard</h2>

    <asp:Label ID="lblTotal" runat="server"
        Text="Total Students: " />

    <br />

    <asp:Label ID="lblPlaced" runat="server"
        Text="Placed Students: " />

    <br />

    <asp:Label ID="lblPercentage" runat="server"
        Text="Placement Percentage: " />

    <hr />

    <asp:GridView ID="GridView1" runat="server"
        AutoGenerateColumns="true"
        BorderWidth="1"
        CellPadding="5">
    </asp:GridView>

    <br />

    <asp:Button ID="btnReport" runat="server"
        Text="Generate Placement Report"
        OnClick="btnReport_Click" />

</form>
</body>
</html>
