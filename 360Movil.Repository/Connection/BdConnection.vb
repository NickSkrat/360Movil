Imports System.Data.SqlClient

Module BdConnection
    Public Connection As New SqlConnection("Data Source=localhost; Initial Catalog=360Movil; User ID=sa; Password=Test_Movil360")

    Sub Open_Connection()
        If Connection.State = 0 Then
            Connection.Open()
        End If
    End Sub

    Sub Close_Connection()
        If Connection.State = 1 Then
            Connection.Close()
        End If
    End Sub
End Module
