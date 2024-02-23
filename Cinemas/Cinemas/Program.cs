using AspNetCoreHero.ToastNotification;
using AspNetCoreHero.ToastNotification.Notyf.Models;
using Cinemas.Models;
using Microsoft.EntityFrameworkCore;
using System.Configuration;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews().AddRazorRuntimeCompilation();
builder.Services.AddHttpContextAccessor();
builder.Services.AddNotyf(config => {config.DurationInSeconds = 10; config.IsDismissable =true; config.Position = NotyfPosition.TopRight;});
builder.Services.AddDbContext<DbCinemasContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("dbCinemas")));
builder.Services.AddSession(cfg => {                // Đăng ký dịch vụ Session
    cfg.IdleTimeout = new TimeSpan(0, 120, 0);       // Thời gian tồn tại của Session
});
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
app.UseSession();
app.UseRouting();

app.UseAuthorization();
app.MapControllerRoute(
    name: "areas",
    pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}"
);
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Phim}/{action=Index}/{id?}");

app.Run();
