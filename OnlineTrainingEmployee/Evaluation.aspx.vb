Imports System.Data.SqlClient
Imports System.Data
Public Class Evaluation
    Inherits System.Web.UI.Page
    Dim co As test = New test


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindEvatraining()
            bindEvaemployee()
        End If
    End Sub

    Protected Sub btnEva_Click(sender As Object, e As EventArgs) Handles btnEva.Click
        Dim instr As String
        instr = "insert into Evaluation_table(Training_id,Employee_id,Remarks)values(" + Evatrid.SelectedValue + "," + Evaempid.SelectedValue + ", '" + txtremarks.Text + "')"
        Dim cmdrequest As SqlCommand = New SqlCommand(instr, co.connect())
        cmdrequest.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        txtremarks.Text = ""
    End Sub
    Public Sub bindEvatraining()
        Dim str As String
        str = "select Training_id,Training_name from Training_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
        Evatrid.Items.Clear()
        Evatrid.Items.Add("--Select--")
        Evatrid.DataTextField = "Training_name"
        Evatrid.DataValueField = "Training_id"
        Evatrid.DataSource = ds
        Evatrid.DataBind()
    End Sub
    Public Sub bindEvaemployee()
        Dim str As String
        str = "select Employee_id,First_name from Employee_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
        Evaempid.Items.Clear()
        Evaempid.Items.Add("--Select--")
        Evaempid.DataTextField = "Employee_name"
        Evaempid.DataValueField = "Employee_id"
        Evaempid.DataSource = ds
        Evaempid.DataBind()
    End Sub

   
End Class