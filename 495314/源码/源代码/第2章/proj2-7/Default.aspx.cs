using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename, fileExtension, filepath;
        //判断FileUpload控件是否包含文件
        if (!FileUpload1.HasFile)    //HasFile属性检查是否选定了某个文件
        {
            Label1.Text="请先选择要上传的文件！";
            return;
        }
        //获取上传文件名称
        filename = FileUpload1.FileName;
        //判断文件类型
        fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);
        if (fileExtension != ".jpg")
        {
             Label1.Text = "文件上传类型不正确，请上传.jpg格式！";
             return;
        }
        //获取服务器保存路径
        filepath = Server.MapPath("~/uploads/");   
        //上传文件
        FileUpload1.PostedFile.SaveAs(filepath+filename);
        Label1.Text = "上传文件名：" + filename + "<br/>" + "上传文件类型：" + FileUpload1.PostedFile.ContentType + "<br/>" + "上传文件大小：" + FileUpload1.PostedFile.ContentLength.ToString() + "字节";
    }
}