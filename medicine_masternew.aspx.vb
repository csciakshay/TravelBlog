Imports System.Data.SqlClient
Partial Class medicine_masternew
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\projectdb.mdf;Integrated Security=True ")

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            con.Open()

            Dim cmd As New SqlCommand()
            cmd.Connection = con
            cmd.CommandText = "medicinenew_master"
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@medicineid", Data.SqlDbType.VarChar).Value = txtmedicineid.Text
            cmd.Parameters.Add("@medicine_quantity", Data.SqlDbType.VarChar).Value = txtmedicinequa.Text
            cmd.Parameters.Add("@medicine_type", Data.SqlDbType.VarChar).Value = txtmeditype.Text
            cmd.Parameters.Add("@medicine_exp_date", Data.SqlDbType.VarChar).Value = txtexdate.Text
            cmd.Parameters.Add("@unit", Data.SqlDbType.VarChar).Value = txtunit.Text
            cmd.Parameters.Add("@medicine_company_name", Data.SqlDbType.VarChar).Value = txtmedicompanyname.Text
            If cmd.ExecuteNonQuery() Then
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' insert Success');", True)
                Reset()
            Else
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' insert  Not Success');", True)
                Reset()
            End If
        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally
            con.Close()
        End Try
    End Sub
    Sub reset()
        txtmedicineid.Text = ""
        txtmedicinequa.Text = ""
        txtmeditype.Text = ""
        txtexdate.Text = ""
        txtunit.Text = ""
        txtmedicompanyname.Text = ""
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            con.Open()
            Dim adap As New SqlCommand("select COALESCE(max(substring(medicineid,2,4)),0) from medicine_master", con)
            Dim id As Integer
            id = adap.ExecuteScalar()
            id += 1
            'id = "A" + id
            txtmedicineid.Text = "M" + id.ToString.PadLeft(4, "0")
        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally
            con.Close()
        End Try

    End Sub

End Class
