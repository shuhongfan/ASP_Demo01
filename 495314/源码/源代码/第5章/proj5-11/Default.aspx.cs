using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn =
    new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlBind();
            imgBind();
            Label1.Text = this.DropDownList1.SelectedItem.Text;
        }
    }
    protected void ddlBind()
    {
        string sql = "select picname from picSend";
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DropDownList1.DataSource = ds.Tables[0].DefaultView;
        DropDownList1.DataTextField = "picname";
        DropDownList1.DataValueField = "picname";
        DropDownList1.DataBind();
    }
    protected void imgBind()
    {
        Image1.ImageUrl = "~/images/" + DropDownList1.SelectedValue;

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = this.DropDownList1.SelectedItem.Text;
        imgBind();
    }
}