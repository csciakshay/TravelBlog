Imports System.Data.SqlClient
Partial Class details
    Inherits System.Web.UI.Page
    Dim mycon As New CommonDB
    Dim pid As String

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        'pid = Request.QueryString("ID")
        'mycon.openConnection()

        'Dim CMD As New SqlCommand("select * from TravelMaster where travelId='" + pid + "'", mycon.con)
        'Dim adp As New SqlDataAdapter()
        'Dim dt As New Data.DataTable()
        'adp.SelectCommand = CMD
        'adp.Fill(dt)
        'DetailsView1.DataSource = dt
        'DetailsView1.DataBind()

        'Dim CMD1 As New SqlCommand("select imagePath as images from TravelImages where travelId='" + pid + "'", mycon.con)
        'Dim adp1 As New SqlDataAdapter()
        'Dim dt1 As New Data.DataTable()
        'adp1.SelectCommand = CMD1
        'adp1.Fill(dt1)
        'DataList1.DataSource = dt1
        'DataList1.DataBind()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Response.Redirect("Home.aspx")

    End Sub
End Class
