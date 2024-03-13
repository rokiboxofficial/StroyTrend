using Microsoft.EntityFrameworkCore;

namespace StroyTrend.Data;

public class ApplicationContext : DbContext
{
    public ApplicationContext()
    {

    }

    public ApplicationContext(DbContextOptions<ApplicationContext> options)
        : base(options)
    {

    }

    public virtual DbSet<Project> Projects => Set<Project>();
    public virtual DbSet<Entry> Entries => Set<Entry>();
}