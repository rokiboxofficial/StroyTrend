namespace StroyTrend.Data;

public class Entry
{
    public int Id { get; set; }
    public DateTime Date { get; set; }
    public string Key { get; set; } = null!;
    public int Value { get; set; }

    public Project Project { get; set; } = null!;
    public int ProjectId { get; set; }
}