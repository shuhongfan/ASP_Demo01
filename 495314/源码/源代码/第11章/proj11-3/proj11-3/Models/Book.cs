using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace proj11_3.Models
{
    public class Book
    {
        public int id { get; set; }//图书ID，默认作为主键
        public string isbn { get; set; }//ISBN
        public string bookName { get; set; }//书名
        public string author{ get; set; }//作者
        public string press { get; set; }//出版社
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}")]//控制日期的显示格式
        public DateTime pressDate{ get; set; }//出版日期
        public double price { get; set; }//价格
    }
}