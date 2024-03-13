Imports System.Data.Common
Imports System.Data.SqlClient


Public Class Form1

    Dim connectionString As String = "Data Source=SERVER_NAME;Initial Catalog=DATABASE_NAME;User ID=USERNAME;Password=PASSWORD"


    Sub MySub()

        ' Veritabanı bağlantısı oluştur
        Using connection As New SqlConnection(connectionString)
            ' SQL sorgusu
            Dim query As String = "SELECT columnName FROM tableName"

            ' SqlCommand nesnesi oluştur
            Dim command As New SqlCommand(query, connection)

            Try
                ' Veri tablosu oluştur
                Dim dataTable As New DataTable()

                ' Veri adaptörü oluştur
                Dim dataAdapter As New SqlDataAdapter(command)

                ' Verileri veri tablosuna doldur
                dataAdapter.Fill(dataTable)

                ' ComboBox'ın DataSource özelliğine veri tablosunu ata
                ComboBox1.DataSource = dataTable

                ' ComboBox'ta gösterilecek sütun adını belirt
                ComboBox1.DisplayMember = "columnName"
            Catch ex As Exception
                MessageBox.Show("Veri okuma hatası: " & ex.Message)
            End Try
        End Using

    End Sub




End Class
