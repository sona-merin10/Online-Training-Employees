Imports System.Data.SqlClient
Imports System.Data
Public Class EmpLogin
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        
        Dim usernameOrEmail As String = txtemail.Text
        Dim password As String = txtpass.Text

        If AuthenticateUser(usernameOrEmail, password) Then
            ' If authentication is successful, set the username in the session
            Session("Email") = usernameOrEmail
            Dim query1 As String = "SELECT Designation FROM Employee_table WHERE Email = @UsernameOrEmail OR Email = @UsernameOrEmail AND Pass = @Password  "
            Dim com As SqlCommand = New SqlCommand(query1, co.connect())
            Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
            Dim ds As DataTable = New DataTable
            sqlda.Fill(ds)
            If ds(0)(0) = "HR" Then
                Response.Redirect("HRApproval.aspx")
            End If
            ' Redirect to the profile page
            Response.Redirect("Employeesignup.aspx")
        Else
            ' Authentication failed, display error message
            lblMessage.Text = "Invalid username/email or password"
        End If
    End Sub
    Private Function AuthenticateUser(usernameOrEmail As String, password As String) As Boolean

        Dim query As String = "SELECT * FROM Employee_table WHERE Email = @UsernameOrEmail OR Email = @UsernameOrEmail AND Pass = @Password"

        Using cmd As New SqlCommand(query, co.connect())
            cmd.Parameters.AddWithValue("@UsernameOrEmail", usernameOrEmail)
            cmd.Parameters.AddWithValue("@Password", password)
            Dim count As Integer = Convert.ToInt32(cmd.ExecuteScalar())
            ' If count is greater than 0, user is authenticated
            Return count > 0
        End Using
    End Function

    Protected Sub LinkButton2_Click(sender As Object, e As EventArgs) Handles LinkButton2.Click
        Response.Redirect("Employeesignup.aspx")
    End Sub
End Class