using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using AIRLINE_.WEBAPP.Areas.Identity.Data;
using AIRLINE_.WEBAPP.Models;
using AIRLINE_.WEBAPP.Services.EmailSenderService;

var builder = WebApplication.CreateBuilder(args);
var connectionString = builder.Configuration.GetConnectionString("AirlineDbContextConnection") ?? throw new InvalidOperationException("Connection string 'AirlineDbContextConnection' not found.");

builder.Services.AddDbContext<AirlineDbContext>(options =>
    options.UseSqlServer(connectionString));

//builder.Services.AddDefaultIdentity<ApplicationUser>(options => options.SignIn.RequireConfirmedAccount = false)
//    .AddEntityFrameworkStores<AirlineDbContext>();

builder.Services.AddSingleton<UserStatus>();
builder.Services.AddSingleton<IEmailSender, EmailSender>();

builder.Services.AddIdentity<ApplicationUser, IdentityRole>(options => options.SignIn.RequireConfirmedAccount = false)
    .AddDefaultUI().AddEntityFrameworkStores<AirlineDbContext>();

// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();
app.UseAuthentication();;

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.MapRazorPages();

app.Run();
