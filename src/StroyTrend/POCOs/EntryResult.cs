namespace StroyTrend.POCOs;

public class EntryResult
{
    public EntryResult(double total, Dictionary<string, Dictionary<string, double>> records)
    {
        Total = total;
        Records = records;
    }

    public double Total { get; }
    public Dictionary<string, Dictionary<string, double>> Records { get; }
}