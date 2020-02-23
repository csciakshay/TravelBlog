Imports System.Data.SqlClient
Partial Class Home
    Inherits System.Web.UI.Page
    Dim mycon As New CommonDB

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '  getTravelData()

    End Sub
    Protected Sub getTravelData()
        'mycon.openConnection()

        'Dim cmd As New SqlCommand("SELECT UserId, TravelId, subject, description, details,(SELECT TOP (1) imagePath FROM TravelImages WHERE        (travelId = a.TravelId)) AS imagePath FROM            TravelMaster AS a ", mycon.con)
        'Dim da As New SqlDataAdapter(cmd)
        'Dim dt As New Data.DataTable
        'da.Fill(dt)
        'dlProducts.DataSource = dt
        'dlProducts.DataBind()
        'mycon.closeConnection()


    End Sub
End Class
