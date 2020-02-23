Imports System.Data.SqlClient
Partial Class forgotpass
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\projectdb.mdf;Integrated Security=True ")
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles subbtn.Click
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd.Connection = con
            cmd.CommandText = "forgotpass"
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@name", Data.SqlDbType.VarChar).Value = txtuser.Text
            cmd.Parameters.Add("@gmail", Data.SqlDbType.VarChar).Value = txtmail.Text
            Dim adap As New SqlDataAdapter
            adap.SelectCommand = cmd
            Dim dt As New Data.DataTable()
            adap.Fill(dt)
            If dt.Rows.Count > 0 Then
                Dim fullurl As String = "hey " + dt.Rows(0)("name").ToString + "your new password is : password"
                Dim smtpclient As System.Net.Mail.SmtpClient = New System.Net.Mail.SmtpClient("smtp.gmail.com", 587)

                Dim message As System.Net.Mail.MailMessage = New System.Net.Mail.MailMessage("krishnahpatel2000@gmail.com", txtmail.Text, "Care Managment Activation", "")
                message.IsBodyHtml = True
                message.Body = fullurl
                smtpclient.EnableSsl = True
                smtpclient.Send(message)
                Dim cmd2 As New SqlCommand("update registration set password='" + FormsAuthentication.HashPasswordForStoringInConfigFile("password", "md5") + "'", con)
                con.Open()
                cmd2.ExecuteNonQuery()
                MsgBox("reset link sent on " + txtmail.Text)
                Response.Redirect("login.aspx", False)
            Else
                MsgBox("email" + txtmail.Text + "not registered")
            End If
        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally
            con.Close()

        End Try


        'If cmd.ExecuteNonQuery() Then
        'ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' register success');", True)
        'Reset()
        'Else
        'ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' register  not success');", True)
        'Reset()
        'End If
    End Sub
End Class
