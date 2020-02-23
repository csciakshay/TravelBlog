Imports System.Data.SqlClient
Partial Class medicine_master
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\projectdb.mdf;Integrated Security=True ")

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        Try
            con.Open()

            Dim cmd As New SqlCommand()
            cmd.Connection = con
            cmd.CommandText = "insmedicinetable"
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@medicine_id", Data.SqlDbType.VarChar).Value = txtmediid.Text
            cmd.Parameters.Add("@id", Data.SqlDbType.VarChar).Value = DropDownList1.SelectedValue
            cmd.Parameters.Add("@medicine_quantity", Data.SqlDbType.VarChar).Value = txtmediqu.Text
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
        txtmediid.Text = ""
        txtmediqu.Text = ""


    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            con.Open()
            Dim adap As New SqlCommand("select COALESCE(max(substring(medicine_id,2,4)),0) from medicinetable", con)
            Dim id As Integer
            id = adap.ExecuteScalar()
            id += 1
            'id = "A" + id
            txtmediid.Text = "M" + id.ToString.PadLeft(4, "0")
        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally
            con.Close()
        End Try

    End Sub
End Class
