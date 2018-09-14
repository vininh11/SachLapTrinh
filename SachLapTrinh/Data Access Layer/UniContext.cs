using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace SachLapTrinh.Data_Access_Layer
{
    public class UniContext : DbContext
    {
        public UniContext() : base("UniContext") { }
        public DbSet<Book> Books { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<User> Users { get; set; }
    }
}