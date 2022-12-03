using AIRLINE_.EF.ApiModels;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace AIRLINE_.EF
{
    public class AirlineDbContext : DbContext
    {
        public DbSet<AirlineApiModel>? Airlines { get; set; }
        private IConfiguration _configuration;
        public AirlineDbContext()
        {

        }
        public AirlineDbContext(DbContextOptions options, IConfiguration configuration)
        : base(options)
        {
            _configuration= configuration;
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            string connectionString = _configuration.GetConnectionString("AirlineConnectionString");
            optionsBuilder.UseSqlServer(connectionString);
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
