using CONNECT_API_TO_DB_.EF.Model;
using Microsoft.EntityFrameworkCore;

namespace CONNECT_API_TO_DB_.EF
{
    public class BookDbContext : DbContext
    {
        public DbSet<Book> Books { get; set; }
        public BookDbContext()
        {

        }
        public BookDbContext(DbContextOptions options)
        : base(options)
        {

        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Data Source=DESKTOP-I3CUF5I;Initial Catalog=WebAppWithApiDb;Integrated Security=True");
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Book>(entity =>
            {
                entity.HasIndex(column => column.Name).IsUnique();
            });
        }
    }
}
