let
    TransactionDates = List.Transform(Transactions[TransactionDate], each Date.From(_)),
    CountDates = List.Transform(PhysicalCounts[CountDate], each Date.From(_)),
    ActionDates = List.Transform(ActionLog[RaisedDate], each Date.From(_)),
    AllDates = List.Combine({TransactionDates, CountDates, ActionDates}),
    MinDate = List.Min(AllDates),
    MaxDate = List.Max(AllDates),
    DateList = List.Dates(MinDate, Duration.Days(MaxDate - MinDate) + 1, #duration(1,0,0,0)),
    DateTable = Table.FromList(DateList, Splitter.SplitByNothing(), {"Date"}),
    Typed = Table.TransformColumnTypes(DateTable, {{"Date", type date}}),
    AddYear = Table.AddColumn(Typed, "Year", each Date.Year([Date]), Int64.Type),
    AddMonthNo = Table.AddColumn(AddYear, "MonthNo", each Date.Month([Date]), Int64.Type),
    AddMonth = Table.AddColumn(AddMonthNo, "Month", each Date.ToText([Date], "MMM"), type text),
    AddYearMonth = Table.AddColumn(AddMonth, "YearMonth", each Date.ToText([Date], "yyyy-MM"), type text),
    AddQuarter = Table.AddColumn(AddYearMonth, "Quarter", each "Q" & Text.From(Date.QuarterOfYear([Date])), type text)
in
    AddQuarter