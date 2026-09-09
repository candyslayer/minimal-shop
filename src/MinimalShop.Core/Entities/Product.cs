namespace MinimalShop.Core.Entities;

public class Product
{
    public long Id { get; set; }

    public string Name { get; set; } = string.Empty;

    public string Cover { get; set; } = string.Empty;

    public decimal Price { get; set; }

    public int Sales { get; set; }

    public bool Enabled { get; set; }
}
