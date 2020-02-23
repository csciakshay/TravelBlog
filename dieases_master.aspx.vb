Imports System.Data.SqlClient
Partial Class dieases_master
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\projectdb.mdf;Integrated Security=True ")

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd.Connection = con
            cmd.CommandText = "insdieasesmaster"
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@dieases_id", Data.SqlDbType.VarChar).Value = txtdieid.Text
            cmd.Parameters.Add("@dieases_description", Data.SqlDbType.VarChar).Value = txtdiedes.Text
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
        txtdieid.Text = ""
        txtdiedes.Text = ""
        

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            con.Open()
            Dim adap As New SqlCommand("select COALESCE(max(substring(dieases_id,2,4)),0) from dieases_master", con)
            Dim id As Integer
            id = adap.ExecuteScalar()
            id += 1
            'id = "A" + id
            txtdieid.Text = "D" + id.ToString.PadLeft(4, "0")
        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally
            con.Close()
        End Try

    End Sub

    Protected Sub btnupdate_Click(sender As Object, e As EventArgs) Handles btnupdate.Click
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd.Connection = con
            cmd.CommandText = "updtdieasesmaster"
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@dieases_id", Data.SqlDbType.VarChar).Value = txtdieid.Text
            cmd.Parameters.Add("@dieases_description", Data.SqlDbType.VarChar).Value = txtdiedes.Text
            If cmd.ExecuteNonQuery() Then
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' update Success');", True)
                reset()
            Else
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' update  Not Success');", True)
                reset()
            End If
        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally
            con.Close()
        End Try

    End Sub
End Class
