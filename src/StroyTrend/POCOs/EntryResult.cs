﻿namespace StroyTrend.POCOs;

public class EntryResult
{
    public EntryResult(long total, Dictionary<string, Dictionary<string, int>> records)
    {
        Total = total;
        Records = records;
    }

    public long Total { get; set; }
    public Dictionary<string, Dictionary<string, int>> Records { get; set; }
}