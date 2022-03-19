using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename, fileExtension, filepath;
        if (!FileUpload1.HasFile)
        {
            Label1.Text = "请先选择要上传简单文件！";
            return;
        }

        filename = FileUpload1.FileName;
        fileExtension=System.IO.Path.GetExtension(filename);
        if (fileExtension != ".png")
        {
            Label1.Text = "文件上传类型不正确，请上传.png格式！";
            return;
        }

        filepath = Server.MapPath("~/uploads/");
        FileUpload1.PostedFile.SaveAs(filepath+filename);
        Label1.Text=
            "上传文件名："+filename+"<br/>"+
            "上传文件类型:"+FileUpload1.PostedFile.ContentType + "<br/>" +
            "上传文件大小：" + FileUpload1.PostedFile.ContentLength.ToString() + "字节";
    }
}