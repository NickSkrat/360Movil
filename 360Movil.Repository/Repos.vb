Imports System.Data.SqlClient

Public Class Repos
    Public Function GetContainer(eir) As Container
        Dim cmd As New SqlCommand("Proc_GetContainer", Connection)
        Try
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@eir", eir)
            Open_Connection()
            Dim sda As New SqlDataAdapter(cmd)
            Dim dt As New DataTable
            sda.Fill(dt)
            Close_Connection()

            Dim cont As New Container
            cont.eir = dt.Rows(0).Item(0).ToString
            cont.container = dt.Rows(0).Item(1).ToString
            cont.stamp = dt.Rows(0).Item(2).ToString
            cont.responsable.ResponsableId = dt.Rows(0).Item(3).ToString
            cont.responsable.RespomnsableName = dt.Rows(0).Item(4).ToString
            cont.company.companyId = dt.Rows(0).Item(5)
            cont.company.companyName = dt.Rows(0).Item(6).ToString
            Return cont
        Catch ex As Exception
            Dim cont As New Container
            cont.message = "No se encontro resultados de su busqueda"
            Return cont
        End Try
    End Function
End Class
