Imports System.Data.SqlClient
Partial Class admmite_master
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\projectdb.mdf;Integrated Security=True ")

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            con.Open()

            Dim cmd As New SqlCommand()
            cmd.Connection = con
            cmd.CommandText = "insadmmitmaster"
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@admmit_id", Data.SqlDbType.VarChar).Value = txtadid.Text
            cmd.Parameters.Add("@id", Data.SqlDbType.Int).Value = DropDownList1.SelectedValue
            cmd.Parameters.Add("@room_type", Data.SqlDbType.VarChar).Value = txtroomtype.Text
            cmd.Parameters.Add("@room_no", Data.SqlDbType.VarChar).Value = txtroomno.Text
            cmd.Parameters.Add("@admmit_date", Data.SqlDbType.VarChar).Value = txtaddate.Text
            cmd.Parameters.Add("@admmit_time", Data.SqlDbType.VarChar).Value = txtadtime.Text
            cmd.Parameters.Add("@discharge_date", Data.SqlDbType.VarChar).Value = txtdisdate.Text
            cmd.Parameters.Add("@discharge_time", Data.SqlDbType.VarChar).Value = txtdistime.Text
            cmd.Parameters.Add("@room_charge", Data.SqlDbType.VarChar).Value = txtroomcharge.Text
            If cmd.ExecuteNonQuery() Then
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' insert success');", True)
                reset()
            Else
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' insert  not success');", True)
                reset()
            End If
        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally

            con.Close()
        End Try


    End Sub
    Sub reset()
        txtadid.Text = ""
        txtroomtype.Text = ""
        txtroomno.Text = ""
        txtaddate.Text = ""
        txtadtime.Text = ""
        txtdisdate.Text = ""
        txtdistime.Text = ""
        txtroomcharge.Text = ""
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Try
            con.Open()
            Dim adap As New SqlCommand("select COALESCE(max(substring(admmit_id,2,4)),0) from admmitnew_master", con)
            Dim id As Integer
            id = adap.ExecuteScalar()
            id += 1
            'id = "A" + id
            txtadid.Text = "A" + id.ToString.PadLeft(4, "0")
            ' DropDownList1.Items.Insert(0, "Select Patient")
        Catch ex As Exception
            Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
        Finally
            con.Close()
        End Try
    End Sub
End Class
