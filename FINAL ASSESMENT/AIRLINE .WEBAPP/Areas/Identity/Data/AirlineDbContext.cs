using AIRLINE_.WEBAPP.Areas.Identity.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AIRLINE_.WEBAPP.Areas.Identity.Data;

public class AirlineDbContext : IdentityDbContext<ApplicationUser>
{
    public AirlineDbContext(DbContextOptions<AirlineDbContext> options)
        : base(options)
    {
    }

    protected override void OnModelCreating(ModelBuilder builder)
    {
        base.OnModelCreating(builder);
        // Customize the ASP.NET Identity model and override the defaults if needed.
        // For example, you can rename the ASP.NET Identity table names and more.
        // Add your customizations after calling base.OnModelCreating(builder);
        builder.Entity<ApplicationUser>(entity =>
        {
            entity.Property(p => p.Email).IsRequired().HasColumnType("Varchar(50)").HasMaxLength(50);
            entity.HasIndex(e => e.Email).IsUnique();
            entity.Property(p => p.PanNumber).IsRequired().HasColumnType("char(10)");
            entity.HasIndex(e => e.PanNumber).IsUnique();
            entity.Property(p => p.PasswordHash).IsRequired();
            entity.Property(p => p.Approved).IsRequired().HasColumnType("char(5)").HasDefaultValue("False");
        });
    }
}
