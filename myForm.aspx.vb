Imports System.Data.SqlClient
Imports CommonDB

Partial Class myForm
    Inherits System.Web.UI.Page
    Dim mycon As New CommonDB
    Protected Function getUserID() As Integer
        mycon.openConnection()
        Dim max As Integer
        Dim cmd As New SqlCommand("Select MAX(COALESCE(UserId,0)) from UserMaster", mycon.con)
        If IsDBNull(cmd.ExecuteScalar()) Then
            max = 0
        Else
            max = cmd.ExecuteScalar()
        End If

        mycon.closeConnection()
        Return max + 1

    End Function
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Try
            mycon.openConnection()
            Dim qry, gender, filePath As String
            gender = ""
            If rbMale.Checked Then
                gender = "Male"
            End If
            If rbFemale.Checked Then
                gender = "Female"
            End If
            FileUpload1.SaveAs(Server.MapPath("~/upload/" + FileUpload1.FileName))
            filePath = "~/upload/" + FileUpload1.FileName
            Dim cmd As New SqlCommand
            cmd.Connection = mycon.con
            qry = "insert into UserMaster values('" & txtUserId.Text & "','" & txtFullName.Text & "','" & gender & "','" & txtAddress.Text & "','" & txtCity.Text & "','" & txtState.Text & "','" & txtCountry.Text & "','" & txtContactNo.Text & "','" & txtEmail.Text & "','" & filePath & "','" & FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "md5") & "')"
            cmd.CommandText = qry
            If cmd.ExecuteNonQuery Then
                'MsgBox("Success")
                Response.Write("<script language='javascript'> alert('Registration success'); </script>")
            Else
                Response.Write("<script language='javascript'> alert('Registration Fails'); </script>")
            End If

        Catch ex As Exception
            MsgBox("Error: " + ex.Message)
        Finally
            mycon.closeConnection()
        End Try



    End Sub

    Protected Sub btnReset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReset.Click
        txtAddress.Text = ""
        txtCity.Text = ""
        txtContactNo.Text = ""
        txtCountry.Text = ""
        txtEmail.Text = ""
        txtFullName.Text = ""
        txtPassword.Text = ""
        txtPasswordRe.Text = ""
        txtState.Text = ""


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            txtUserId.Text = getUserID()
        End If

    End Sub
End Class
