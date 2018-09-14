using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SachLapTrinh.Data_Access_Layer.DAL
{
    public class BookDAL
    {
        // Add new book
        public void Add()
        {
            using (var context = new UniContext())
            {
                var book = new Book
                {
                    BookID = "BK00000001",
                    BookName = "FullStack React",
                    Tags = "React",
                    Publisher = "FullStack.io",
                    Authors = "FullStack.io",
                    Pages = 678,
                    Size = 12.3
                };

                context.Books.Add(book);
                context.SaveChanges();
            }
        }

        // Edit book
        public void Edit(string strBookID)
        {
            using (var context = new UniContext())
            {
                var book = context.Books.Where(x => x.BookID.ToString().Equals(strBookID)).Single();
                book.BookName = "BookEdit";
                context.SaveChanges();
            }
        }

        // Delete book
        public void delete(string strBookID)
        {
            using (var context = new UniContext())
            {
                var book = context.Books.Where(x => x.BookID.ToString().Equals(strBookID)).Single();
                context.Books.Remove(book);
                context.SaveChanges();
            }
        }
    }
}