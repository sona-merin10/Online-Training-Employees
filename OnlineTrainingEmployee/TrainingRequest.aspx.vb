Imports System.Data.SqlClient
Imports System.Data
Public Class TrainingRequest
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Me.IsPostBack Then
            bindRequestemp()
            bindRequesttraining()
        End If
    End Sub

    Protected Sub btntrareqsub_Click(sender As Object, e As EventArgs) Handles btntrareqsub.Click
        Dim instr As String
        instr = "insert into TrainingRequest_table(Employee_id,Training_id,Request_date,Status)values(" + traireqempid.SelectedValue + "," + traireqtrid.SelectedValue + ", '" + traireqdate.Text + "','" + traireqstatus.SelectedItem.Text + "')"
        Dim cmdrequest As SqlCommand = New SqlCommand(instr, co.connect())
        cmdrequest.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        traireqdate.Text = ""
    End Sub
    Public Sub bindRequestemp()
        Dim str As String
        str = "select Employee_id,First_name from Employee_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)


        traireqempid.DataTextField = "First_name"
        traireqempid.DataValueField = "Employee_id"
        traireqempid.DataSource = ds
        traireqempid.DataBind()
        traireqempid.Items.Insert(0, "--Select--")
    End Sub
    Public Sub bindRequesttraining()
        Dim str As String
        str = "select Training_id,Training_name from Training_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)


        traireqtrid.DataTextField = "Training_name"
        traireqtrid.DataValueField = "Training_id"
        traireqtrid.DataSource = ds
        traireqtrid.DataBind()
        traireqtrid.Items.Insert(0, "--Select--")
    End Sub

   
End Class