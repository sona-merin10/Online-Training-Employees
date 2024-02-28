Imports System.Data.SqlClient
Imports System.Data
Public Class TrainingFeedback
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindFeedtraining()
            bindFeedEmployee()
        End If
    End Sub

    Protected Sub btnfesub_Click(sender As Object, e As EventArgs) Handles btnfesub.Click
        Dim instr As String
        instr = "insert into TrainingFeedback_table(Training_id,Employee_id,Feedback_date,Rating,Comments)values(" + fetrid.SelectedValue + "," + feempid.SelectedValue + ",'" + fefedate.Text + ",'" + txtcomments.Text + "')"
        Dim cmdfeedback As SqlCommand = New SqlCommand(instr, co.connect())
        cmdfeedback.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        fefedate.Text = ""
        txtcomments.Text = ""
    End Sub
    Public Sub bindFeedtraining()
        Dim str As String
        str = "select Training_id,Training_name from Training_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
       
        fetrid.DataTextField = "Training_name"
        fetrid.DataValueField = "Training_id"
        fetrid.DataSource = ds
        fetrid.DataBind()
        fetrid.Items.Insert(0, "--Select--")
    End Sub
    Public Sub bindFeedEmployee()
        Dim str As String
        str = "select Employee_id,First_name from Employee_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
      
        feempid.DataTextField = "First_name"
        feempid.DataValueField = "Employee_id"
        feempid.DataSource = ds
        feempid.DataBind()
        feempid.Items.Insert(0, "--Select--")
    End Sub

   
End Class