Imports System.Data.SqlClient
Imports System.Data
Public Class ApplyforTraining
    Inherits System.Web.UI.Page
    Dim co As test = New test


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Me.IsPostBack Then
            bindapplytraining()
            bindapplyEmployee()
            bindapplyvenue()
        End If
    End Sub

    Protected Sub Btnap_Click(sender As Object, e As EventArgs) Handles Btnap.Click
        Dim instr As String
        instr = "insert into ApplyForTraining_table(Training_id,Employee_id,Venue_id)values(" + Aptraiid.SelectedValue + "," + Apempid.SelectedValue + ", '" + Apvenid.SelectedValue + "')"
        Dim cmdapply As SqlCommand = New SqlCommand(instr, co.connect())
        cmdapply.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
    End Sub
    Public Sub bindapplytraining()
        Dim str As String
        str = "select Training_id,Training_name from Training_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)


        Aptraiid.DataTextField = "Training_name"
        Aptraiid.DataValueField = "Training_id"
        Aptraiid.DataSource = ds
        Aptraiid.DataBind()
        Aptraiid.Items.Insert(0, "--Select--")
    End Sub
    Public Sub bindapplyEmployee()
        Dim str As String
        str = "select Employee_id,First_name from Employee_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
        Apempid.Items.Clear()

        Apempid.DataTextField = "First_name"
        Apempid.DataValueField = "Employee_id"
        Apempid.DataSource = ds
        Apempid.DataBind()
    End Sub
    Public Sub bindapplyvenue()
        Dim str As String
        str = "select Venue_id,Name from Venue_table"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds As DataTable = New DataTable
        sqlda.Fill(ds)
        Apvenid.Items.Clear()
        Apvenid.Items.Add("--Select--")
        Apvenid.DataTextField = "Name"
        Apvenid.DataValueField = "Venue_id"
        Apvenid.DataSource = ds
        Apvenid.DataBind()
    End Sub
    
End Class