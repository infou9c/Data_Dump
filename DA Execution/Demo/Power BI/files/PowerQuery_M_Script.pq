let
    Source = Csv.Document(File.Contents("Power Bi.csv"), [Delimiter=",", Columns=12, Encoding=65001, QuoteStyle=QuoteStyle.None]),
    PromotedHeaders = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    ChangedTypes = Table.TransformColumnTypes(PromotedHeaders, {
        {"Order_ID", type text}, {"Order_Date", type date}, {"Age_Group", type text}, {"City", type text}, {"Product", type text},
        {"Quantity", Int64.Type}, {"Sales", type number}, {"Cost", type number}, {"Profit", type number},
        {"Payment_Mode", type text}, {"Order_Type", type text}, {"Profit_Margin_%", type number}
    }),
    AddedMonth = Table.AddColumn(ChangedTypes, "Month", each Date.ToText([Order_Date], "MMM yyyy"), type text),
    AddedMonthSort = Table.AddColumn(AddedMonth, "Month Sort", each Date.Year([Order_Date]) * 100 + Date.Month([Order_Date]), Int64.Type)
in
    AddedMonthSort
