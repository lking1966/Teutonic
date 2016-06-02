
Imports System.Data

Partial Class AjaxCustomers
    Inherits System.Web.UI.Page



    Private Sub AjaxCustomers_Load(sender As Object, e As EventArgs) Handles Me.Load
        Select Case Request("proc")
            Case 1 ' Get customer base
                GetCustomerInput()
        End Select
    End Sub
    Sub GetCustomerInput()
        'Dim sql As String = "CustomerGetName_ByValue '" & Request("")
        'Dim mdata As New My_Data
        'Dim conn As SqlClient.SqlConnection = New SqlClient.SqlConnection(mdata.DBCONN)
        'Dim command As SqlClient.SqlCommand = New SqlClient.SqlCommand(sql, conn)
        'command.CommandTimeout = 90000
        'Dim rs As SqlClient.SqlDataReader
        'conn.Open()
        'rs = command.ExecuteReader()
        'rs.Close()
        'rs = Nothing
        'conn.Close()
        'conn = Nothing
        'command.Dispose()

        Dim Str As String = "<div Class='divTable'>"
        Str = Str & "<div Class='headRow'>"
        Str = Str & "       <div class='divCell' style='text-align:right';><a href=""javascript:closediv('customers');closediv('over')"">Close</a></div>"
        Str = Str & "</div>"
        Str = Str & "<div Class='headRow'>"
        Str = Str & "       <div Class='divCell' align='center'>Customer Name</div>"
        Str = Str & "       <div  Class='divCell'><input Type='text' id='customername' size='25' onkeydown='getcustomer(this.value)'></div>"
        Str = Str & "   </div>"
        Str = Str & "</div>"
        Response.Write(Str)
        Response.End()
    End Sub
End Class
