using Microsoft.EntityFrameworkCore;
using StroyTrend.Data;
using StroyTrend.MappingProfiles;
using StroyTrend.Services;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddRazorPages();
builder.Services.AddControllers();
builder.Services.AddWebOptimizer();
builder.Services.AddAutoMapper(typeof(ApplicationMappingProfile));
builder.Services.AddTransient<EntryProviderService>();
builder.Services.AddTransient<ProjectProviderService>();

var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
builder.Services.AddDbContext<ApplicationContext>(options
    => options.UseNpgsql(connectionString));


var app = builder.Build();

if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    app.UseHsts();
}

app.UseWebOptimizer();

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();
app.MapControllers();
app.MapRazorPages();

app.Run();