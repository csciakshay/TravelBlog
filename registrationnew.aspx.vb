Imports System.Data.SqlClient
Partial Class registrationnew
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\projectdb.mdf;Integrated Security=True ")

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            con.Open()

            Dim gender As String
            If RadioButton1.Checked Then
                gender = "male"
            Else
                gender = "female"
            End If
            FileUpload1.SaveAs(Server.MapPath("~/upload/imgupload" + FileUpload1.FileName))
            Dim imgpath As String
            imgpath = "~/upload/imgupload" + FileUpload1.FileName
            Dim cmd As New SqlCommand()
            cmd.Connection = con
            cmd.CommandText = "insreg"
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@id", Data.SqlDbType.Int).Value = txtid.Text
            cmd.Parameters.Add("@name", Data.SqlDbType.VarChar).Value = txtname.Text
            cmd.Parameters.Add("@address", Data.SqlDbType.VarChar).Value = txtaddress.Text
            cmd.Parameters.Add("@contactno", Data.SqlDbType.VarChar).Value = txtcontactno.Text
            cmd.Parameters.Add("@gender", Data.SqlDbType.VarChar).Value = gender
            cmd.Parameters.Add("@gmail", Data.SqlDbType.VarChar).Value = txtgmail.Text
            cmd.Parameters.Add("@password", Data.SqlDbType.VarChar).Value = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpassword.Text, "md5")
            cmd.Parameters.Add("@image", Data.SqlDbType.VarChar).Value = imgpath
            cmd.Parameters.Add("@role", Data.SqlDbType.VarChar).Value = "user"
            If cmd.ExecuteNonQuery() Then
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' register success');", True)
                reset()
            Else
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' register  not success');", True)
                reset()
            End If

        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally

            con.Close()
        End Try

    End Sub

    Sub reset()
        txtid.Text = ""
        txtname.Text = ""
        txtaddress.Text = ""
        txtcontactno.Text = ""
        RadioButton1.Checked = False
        RadioButton2.Checked = False
        txtgmail.Text = ""
        txtpassword.Text = ""
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            con.Open()
            Dim adap As New SqlCommand("select COALESCE(max(id),0) from registration", con)
            Dim id As Integer
            id = adap.ExecuteScalar()
            id += 1
            txtid.Text = id
        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally
            con.Close()
        End Try

    End Sub
End Class




