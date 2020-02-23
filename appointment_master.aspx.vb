Imports System.Data.SqlClient
Partial Class appointment_master
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\projectdb.mdf;Integrated Security=True ")


    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        Try
            con.Open()
            Dim cmd2 As New SqlCommand("select count(*) from appointment_master where appointment_date='" & txtappdate.Text & "' and appointment_time = '" & DropDownList2.SelectedValue & "'", con)
            Dim noOfApp As Integer
            noOfApp = cmd2.ExecuteScalar()
            'MsgBox(noOfApp)
            If noOfApp < 4 Then
                Dim cmd As New SqlCommand()
                cmd.Connection = con
                cmd.CommandText = "insappointmentmaster"
                cmd.CommandType = Data.CommandType.StoredProcedure
                cmd.Parameters.Add("@appointment_id", Data.SqlDbType.VarChar).Value = txtappid.Text
                cmd.Parameters.Add("@id", Data.SqlDbType.VarChar).Value = DropDownList1.SelectedValue.ToString
                cmd.Parameters.Add("@appointment_date", Data.SqlDbType.VarChar).Value = txtappdate.Text
                cmd.Parameters.Add("@appointment_time", Data.SqlDbType.VarChar).Value = DropDownList2.SelectedValue
                cmd.Parameters.Add("@appointment_description", Data.SqlDbType.VarChar).Value = txtappdes.Text
                If cmd.ExecuteNonQuery() Then
                    reset()
                    ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' insert Success');", True)

                Else
                    ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' insert  Not Success');", True)
                    'reset()
                End If
            Else
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert(' 4 appointment already booked please select any other time or date');", True)
            End If
            
        Catch ex As Exception
            'Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
            ' MsgBox(ex.Message)
        Finally
            con.Close()
        End Try
    End Sub
    Sub reset()
        txtappid.Text = ""
        DropDownList1.SelectedIndex = 0
        txtappdate.Text = ""
        DropDownList2.SelectedIndex = 0
        txtappdes.Text = ""
        
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If Not Page.IsPostBack Then
                con.Open()
                Dim adap As New SqlCommand("select COALESCE(max(substring(appointment_id,2,4)),0) from appointment_master", con)
                Dim id As Integer
                id = adap.ExecuteScalar()
                id += 1
                'id = "A" + id
                txtappid.Text = "A" + id.ToString.PadLeft(4, "0")
                Dim adp As New SqlDataAdapter("select id, CONCAT(id,' - ',name) as name from registration", con)
                Dim dt As New Data.DataTable
                adp.Fill(dt)
                If dt.Rows.Count > 0 Then
                    DropDownList1.DataSource = dt
                    DropDownList1.DataTextField = "name"
                    DropDownList1.DataValueField = "id"
                    DropDownList1.DataBind()
                    DropDownList1.Items.Insert(0, "Select Patient")

                End If
            End If
            
        Catch ex As Exception
            'Response.Redirect("errorpage.aspx?errMsg=" + ex.Message, False)
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try

    End Sub
End Class
