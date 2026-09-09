using Microsoft.EntityFrameworkCore;
using MinimalShop.Core.Entities;

namespace MinimalShop.Infrastructure.Database;

public class ShopDbContext(DbContextOptions<ShopDbContext> options) : DbContext(options)
{
    public DbSet<Product> Products => Set<Product>();
}
