using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Info : System.Web.UI.Page
{
    SqlConnection conn =
     new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            conn.Open();
            string strid = Page.Request.QueryString["GoodsID"];
            string sqlstr = "select * from goods where GoodsID='" + strid + "'";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, conn);
            DataSet myds = new DataSet();
            myda.Fill(myds, "goods");
            conn.Close();
            DataRowView mydrv = myds.Tables["goods"].DefaultView[0];
            TextBox1.Text = Convert.ToString(mydrv.Row["GoodsID"]);
            TextBox2.Text = Convert.ToString(mydrv.Row["GoodsName"]);
            TextBox3.Text = Convert.ToString(mydrv.Row["GoodsTypeName"]);
            TextBox4.Text = Convert.ToString(mydrv.Row["StoreName"]);
            TextBox5.Text = Convert.ToString(mydrv.Row["GoodsPrice"]);
            DateTime dt = Convert.ToDateTime(mydrv.Row["GoodsDate"]);
            TextBox6.Text = dt.ToString("yyyy-MM-dd");
            TextBox7.Text = Convert.ToString(mydrv.Row["GoodsIntroduce"]) + "…";
            Image1.ImageUrl = "~/images/" + (Convert.ToString(mydrv.Row["GoodsPhoto"])).Trim();
        }
    }
}