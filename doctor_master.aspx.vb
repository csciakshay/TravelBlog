Imports System.Data.SqlClient
Partial Class doctor_master
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\projectdb.mdf;Integrated Security=True ")

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        Try
            con.Open()
            Dim gender As String
            If RadioButton3.Checked Then
                gender = "male"
            Else
                gender = "female"
            End If
            Dim cmd As New SqlCommand()
            cmd.Connection = con
            cmd.CommandText = "insdoctormaster"
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@doctor_id", Data.SqlDbType.VarChar).Value = txtdocid.Text
            cmd.Parameters.Add("@doctor_name", Data.SqlDbType.VarChar).Value = txtdocedu.Text
            cmd.Parameters.Add("@doctor_phoneno", Data.SqlDbType.VarChar).Value = txtdocphone.Text
            cmd.Parameters.Add("@doctor_gender", Data.SqlDbType.VarChar).Value = gender
            cmd.Parameters.Add("@doctor_specialization", Data.SqlDbType.VarChar).Value = txtdocspe.Text
            cmd.Parameters.Add("@doctor_education", Data.SqlDbType.VarChar).Value = txtdocedu.Text
            cmd.Parameters.Add("@doctor_email", Data.SqlDbType.VarChar).Value = txtdocmail.Text
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
        txtdocid.Text = ""
        ' txtdocname.Text = ""
        txtdocphone.Text = ""
        RadioButton3.Checked = False
        RadioButton2.Checked = False
        txtdocspe.Text = ""
        txtdocedu.Text = ""
        txtdocmail.Text = ""
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            con.Open()
            Dim adap As New SqlCommand("select COALESCE(max(substring(doctor_id,2,4)),0)from doctor_master", con)
            Dim id As Integer
            id = adap.ExecuteScalar()
            id += 1
            'id = "A" + id
            txtdocid.Text = "DO" + id.ToString.PadLeft(4, "0")
        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally
            con.Close()
        End Try

    End Sub
End Class
