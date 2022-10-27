using AIRLINE_.EF.ApiModels;
using Microsoft.EntityFrameworkCore;

namespace AIRLINE_.EF
{
    public class AirlineDbContext : DbContext
    {
        public DbSet<AirlineApiModel>? Airlines { get; set; }
        public AirlineDbContext()
        {

        }
        public AirlineDbContext(DbContextOptions options)
        : base(options)
        {

        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Data Source=DESKTOP-I3CUF5I\\MSSQLSERVER01;Initial Catalog=FinalAssessmentApiDb;Integrated Security=True");
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AirlineApiModel>(entity =>
            {
                entity.HasIndex(column => column.Name).IsUnique();
            });
        }
    }
}
