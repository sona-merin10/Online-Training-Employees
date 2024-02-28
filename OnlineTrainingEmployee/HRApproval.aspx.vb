Imports System.Data.SqlClient
Imports System.Data
Public Class HRApproval
    Inherits System.Web.UI.Page
    Dim co As test = New test

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindhrapproval()
        End If
    End Sub

    Protected Sub btnhrsub_Click(sender As Object, e As EventArgs) Handles btnhrsub.Click
        Dim instr As String
        instr = "insert into HRApproval_table(Request_id,Approval_date,Status)values(" + hrreqid.SelectedValue + ",'" + hrapldate.Text + "','" + hrstatus.SelectedItem.Text + "')"
        Dim cmdhr As SqlCommand = New SqlCommand(instr, co.connect())
        cmdhr.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        hrapldate.Text = ""
    End Sub
    Public Sub bindhrapproval()
        Dim str As String
        str = "select Request_id from TrainingRequest_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
        hrreqid.Items.Clear()
        hrreqid.Items.Add("--Select--")
        hrreqid.DataValueField = "Request_id"
        hrreqid.DataSource = ds
        hrreqid.DataBind()

    End Sub

    
End Class