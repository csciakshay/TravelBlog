Imports System.Data.SqlClient
Partial Class report_master
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\projectdb.mdf;Integrated Security=True ")

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd.Connection = con
            cmd.CommandText = "insreportmaster"
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@report_id", Data.SqlDbType.VarChar).Value = txtrepid.Text
            cmd.Parameters.Add("@id", Data.SqlDbType.VarChar).Value = DropDownList1.SelectedValue
            cmd.Parameters.Add("@report_result", Data.SqlDbType.VarChar).Value = txtrepres.Text
            cmd.Parameters.Add("@report_taken_date", Data.SqlDbType.VarChar).Value = txtrepdate.Text
            cmd.Parameters.Add("@report_taken_time", Data.SqlDbType.VarChar).Value = txtreptime.Text


            If cmd.ExecuteNonQuery() Then
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' insert Success');", True)
                reset()
            Else
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' insert  Not Success');", True)
                reset()
            End If
        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally
            con.Close()
        End Try

    End Sub
    Sub reset()
        txtrepid.Text = ""
        txtrepres.Text = ""
        txtrepdate.Text = ""
        txtreptime.Text = ""
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            con.Open()
            Dim adap As New SqlCommand("select COALESCE(max(substring(report_id,2,4)),0) from report_master", con)
            Dim id As Integer
            id = adap.ExecuteScalar()
            id += 1

            txtrepid.Text = "R" + id.ToString.PadLeft(4, "0")
        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally
            con.Close()
        End Try

    End Sub
End Class
