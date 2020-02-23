Imports System.Data.SqlClient
Imports System.IO
Partial Class travelEntry
    Inherits System.Web.UI.Page
    Dim mycon As New CommonDB
    Protected Function getTravelID() As Integer
        mycon.openConnection()
        Dim max As Integer
        Dim cmd As New SqlCommand("Select MAX(COALESCE(TravelId,0)) from TravelMaster", mycon.con)
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
            Dim qry As String
            Dim cmd As New SqlCommand
            cmd.Connection = mycon.con
            qry = "insert into TravelMaster values('" & txtUserId.Text & "','" & txtTravelId.Text & "','" & txtSubject.Text & "','" & txtDesc.Text & "','" & txtDtlDesc.Text & "')"
            cmd.CommandText = qry
            If cmd.ExecuteNonQuery Then
                'MsgBox("Success")
                Response.Write("<script language='javascript'> alert('Registration success'); </script>")
            Else
                Response.Write("<script language='javascript'> alert('Registration Fails'); </script>")
            End If
            Dim cmd1 As New SqlCommand()
            ' Get the HttpFileCollection
            Dim hfc As HttpFileCollection = Request.Files
            For i As Integer = 0 To hfc.Count - 1
                Dim hpf As HttpPostedFile = hfc(i)
                If hpf.ContentLength > 0 Then
                    hpf.SaveAs(Server.MapPath("upload") & "\" & Path.GetFileName(hpf.FileName))
                    cmd1.CommandText = "insert into TravelImages values(" + txtUserId.Text + "," + txtTravelId.Text + ",'~\upload\" & Path.GetFileName(hpf.FileName) + "')"
                    cmd1.Connection = mycon.con
                    cmd1.ExecuteNonQuery()
                Else

                    cmd1.CommandText = "insert into TravelImages values(" + txtUserId.Text + "," + txtTravelId.Text + ",'~\upload\noimage.png')"
                    cmd1.Connection = mycon.con
                    cmd1.ExecuteNonQuery()
                End If
            Next i
        Catch ex As Exception
            ' Handle your exception here
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtUserId.Text = 1
        'txtTravelId.Text = getTravelID()

    End Sub
End Class
