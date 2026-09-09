using Microsoft.EntityFrameworkCore;
using MinimalShop.Infrastructure.Database;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDbContext<ShopDbContext>(options =>
    options.UseNpgsql(builder.Configuration.GetConnectionString("Default")));

builder.Services.AddOpenApi();

var app = builder.Build();

app.MapGet("/", () => Results.Ok(new
{
    name = "MinimalShop.NET",
    version = "0.1"
}));

app.MapGet("/api/products", async (ShopDbContext db) =>
{
    var products = await db.Products.ToListAsync();
    return Results.Ok(products);
});

app.Run();
