Imports System.Data.SqlClient
Partial Class test_master
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\projectdb.mdf;Integrated Security=True ")

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Dim cmd As New SqlCommand()
        cmd.Connection = con
        cmd.CommandText = "instestmaster"
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.Parameters.Add("@test_id", Data.SqlDbType.VarChar).Value = txttestid.Text

        cmd.Parameters.Add("@test_type", Data.SqlDbType.VarChar).Value = txttesttype.Text
        cmd.Parameters.Add("@test_date", Data.SqlDbType.VarChar).Value = txttestdate.Text
        cmd.Parameters.Add("@test_time", Data.SqlDbType.VarChar).Value = txttesttime.Text
        
        If cmd.ExecuteNonQuery() Then
            ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' insert success');", True)
            Reset()
        Else
            ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' insert  not success');", True)
            Reset()
        End If

        con.Close()
    End Sub
    Sub reset()
        txttestid.Text = ""
        DropDownList1.SelectedValue = ""
        txttesttype.Text = ""
        txttestdate.Text = ""
        txttesttime.Text = ""
       
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            con.Open()
            Dim adap As New SqlCommand("select COALESCE(max(substring(test_id,2,4)),0) from test_master", con)
            Dim id As Integer
            id = adap.ExecuteScalar()
            id += 1
            'id = "A" + id
            txttestid.Text = "T" + id.ToString().PadLeft(4, "0")
            ' DropDownList1.Items.Insert(0, "Select Patient")

        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally
            con.Close()
        End Try
       
    End Sub
End Class
