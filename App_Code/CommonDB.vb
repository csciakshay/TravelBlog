Imports Microsoft.VisualBasic
Imports System.Data.SqlClient

Public Class CommonDB
    Public con As New SqlConnection(ConfigurationManager.ConnectionStrings("ApplicationServices").ConnectionString)
    Public Sub openConnection()
        con.Open()
    End Sub
    Public Sub closeConnection()
        con.Close()
    End Sub
End Class
