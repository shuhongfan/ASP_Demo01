using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_5 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //绑定GridView控件显示上传图片表中的内容
    protected void gvBind()
    {
        conn.Open();
        string sqltext = "select * from picSend";
        SqlDataAdapter sda = new SqlDataAdapter(sqltext, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        conn.Close();
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Name = TextBox1.Text;
        string pictureName = FileUpload1.FileName; //获取文件名称
        string sendTime = DateTime.Now.ToString(); //获取当前时间
        //获取上传文件的后缀名
        string lastName = pictureName.Substring(pictureName.LastIndexOf(".") + 1);
        if (lastName.ToLower() == "jpg" || lastName.ToLower() == "bmp" || lastName.ToLower() == "gif")
        {
            string SavePath = Server.MapPath("images/") + pictureName;     //设置保存路径
            FileUpload1.PostedFile.SaveAs(SavePath);      //保存上传的图片
            string sql = "insert into picSend(name,picname,sendtime) values('"
                         + Name + "','" + pictureName + "','" + sendTime + "')";
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            com.ExecuteNonQuery();
            conn.Close();
            gvBind();
        }
        else
            Response.Write("<script language=javascript>alert('图片格式不正确！')</script>");
    }
}