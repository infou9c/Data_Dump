# Power BI Report Blueprint: Cafe Sales Insights

Source file: Power Bi.csv
Rows: 250 | Date range: 2026-01-01 to 2026-03-31

## Page 1: Key KPIs
Suggested visuals:
- KPI cards: Total Sales, Total Profit, Total Orders, Total Quantity, Average Order Value, Profit Margin %.
- KPI cards: Best Product by Sales, Best City by Sales, Top Payment Mode by Sales.
- Bar chart: Sales by Product.
- Table or matrix: Product, Sales, Profit, Quantity, Orders, Profit Margin %.
- Slicers: City, Product, Age_Group, Payment_Mode, Order_Type, Order_Date.

## Page 2: Visuals and Charts showing important insights
Suggested visuals:
- Line chart: Monthly Sales and Profit trend.
- Clustered column/bar chart: Sales by Product.
- Column/bar chart: Profit by City.
- Column/bar chart: Sales by Age Group.
- Donut or pie chart: Sales Share by Payment_Mode.
- Donut chart: Sales Share by Order_Type.
- Matrix: City x Product with Sales and Profit.

## Important insights from the attached data
- Total sales: ₹61,336; total profit: ₹17,211; overall profit margin: 28.1%.
- Highest-sales product: Pizza with ₹19,500 sales.
- Highest-profit product: Burger with ₹5,001 profit.
- Strongest city by sales: Pune with ₹28,958 sales.
- Top payment mode by sales: UPI with ₹33,153 sales.

## Recommended Power BI build sequence
1. Open Power BI Desktop and select Get Data > Text/CSV.
2. Select Power Bi.csv from this folder and load it as SalesData.
3. Apply the Power Query script in PowerQuery_M_Script.pq if you want a repeatable import process.
4. Add the DAX measures from DAX_Measures.dax.
5. Import PowerBI_Theme.json from View > Themes > Browse for themes.
6. Build the two report pages using the visual list above.
7. Save the report as a .pbix file from Power BI Desktop.
