using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace proj11_3.Models
{
    public class DBInitializer:DropCreateDatabaseIfModelChanges<BookDBContext>
    {
        protected override void Seed(BookDBContext context)
        {
            List<Book> blist = new List<Book>()
            {
                new Book(){
                    isbn="9787302287537",
                    bookName="ASP.NET从入门到精通（第3版）",
                    author="明日科技",
                    press="清华大学出版社",
                    pressDate=DateTime.Parse("2012-9-1"),
                    price=89.80,            
                },
                new Book()
                {
                    isbn = "9787302264538",
                    bookName = "Visual C#程序设计基础",
                    author = "徐安东",
                    press = "清华大学出版社",
                    pressDate =DateTime.Parse("2012-1-1"),
                    price = 29.00,                   
                }
            };
            blist.ForEach(b=>context.books.Add(b));
        }
    }
}