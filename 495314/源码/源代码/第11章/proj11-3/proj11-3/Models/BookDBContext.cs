using System.Data.Entity;

namespace proj11_3.Models
{
    public class BookDBContext:DbContext
    {
        public BookDBContext()
            : base("name=BookDBContext")
        {

        }
        public DbSet<Book> books { get; set; }
    }
}