Imports System.Data.SqlClient
Partial Class login
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\projectdb.mdf;Integrated Security=True ")

    Protected Sub loginbtn_Click(sender As Object, e As EventArgs) Handles loginbtn.Click
        Try
            con.Open()

            Dim cmd As New SqlCommand()
            cmd.Connection = con
            cmd.CommandText = "selectlogin"
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@id", Data.SqlDbType.Int).Value = DropDownList1.SelectedValue
            cmd.Parameters.Add("@password", Data.SqlDbType.VarChar).Value = txtpass.Text
            If cmd.ExecuteNonQuery() Then
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' register success');", True)
                reset()
            Else
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' register  not success');", True)
                reset()
            End If

            Dim dt As New Data.DataTable()
            dt.Load(cmd.ExecuteReader())
            If dt.Rows.Count > 0 Then
                Session("uname") = DropDownList1.SelectedValue
                Session("userimg") = dt.Rows(0)("image").ToString
                Response.Redirect("registration.aspx", False)
            Else
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' login success');", True)
            End If
        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally
            con.Close()
        End Try

    End Sub
    Sub reset()
        'DropDownList1.SelectedValue = ""
        txtpass.Text = ""
      

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
