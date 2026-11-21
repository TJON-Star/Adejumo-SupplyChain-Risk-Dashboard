# Native Power BI build guide — Agro Inventory Reconciliation

**Source:** Agro_Inventory_Reconciliation_PowerBI_Demo.xlsx  
**Data:** Fictional simulated portfolio data. This guide and its DAX are not a PBIX file.

## Import
Power BI Desktop → Home → Get data → Excel workbook. Load Items, Locations, Transactions, PhysicalCounts and ActionLog. Do not load START_HERE or PowerBI_Measures as fact tables.

In Power Query, set key/descriptive columns to Text; TransactionDate, CountDate and RaisedDate to Date; numeric quantity/value fields to Whole or Decimal number as appropriate. Preserve null ClosureEvidence values.

## Relationships
Create active one-to-many, single-direction relationships:
- Items[SKU] → Transactions[SKU], PhysicalCounts[SKU], ActionLog[SKU]
- Locations[LocationID] → Transactions[LocationID], PhysicalCounts[LocationID], ActionLog[LocationID]

Do not relate fact tables directly. Confirm dimension keys are unique.

## DAX
Add measures from PowerBI_Measures.dax via Modeling → New measure.

**UOM control:** quantities include unlike units (kg, litres, bags, cartons, etc.). Do not display unfiltered totals of BookQtyAtCount, PhysicalQty, VarianceQty or movement quantities. Show quantities at SKU/UOM level. Monetary variance is NGN.

## Report pages
### 1 — Inventory Control Overview
Cards: Counted Lines, Pending Count Lines, Variance Lines, Variance Line Rate, Open Action Records, Signed Variance Value (NGN).  
Slicers: Category, Department, LocationName, CountStatus.  
Charts: Variance Lines by Category; Absolute Variance Value by Location.  
Detail table: SKU, ItemName, Category, UOM, LocationName, BookQtyAtCount, PhysicalQty, VarianceQty, VarianceValue_NGN, CountStatus.

### 2 — Count Variance Analysis
Matrix: Category → ItemName → LocationName; include UOM. Values: book quantity, physical quantity, variance quantity and variance value. Filter CountStatus to Counted. Preserve the variance sign.

### 3 — Stock Movement
Line chart by TransactionDate using Receipts (Qty) and Issues (Qty). Include SKU and UOM slicers. Exclude RecordType=Opening; opening balances are starting positions, not period receipts.

### 4 — Corrective Action Register
Cards: Open Action Records, Closed Action Records, Action Closure Rate. Chart: Action records by ActionStatus. Table: ActionID, RaisedDate, SKU, LocationID, IssueType, ActionStatus, ActionOwner, NextAction, ClosureEvidence.

## Workbook validation
- 48 physical-count rows: 47 Counted and 1 Pending.
- 36 non-zero variance lines among the 47 Counted lines.
- 37 action records: 23 Open and 14 In Progress.
- Pending rows excluded from completed-count KPIs.
- Opening balance records excluded from movement visuals.
- Spot-check selected SKU/location records against the workbook.

These are simulated workbook checks, not proof of real-world stock accuracy.

## Portfolio disclosure
All records, item names, locations, quantities, dates, costs and action records are fictional. This is a workflow demonstration, not an actual client engagement, independent stock verification, audit opinion or evidence of realised savings. A variance is an exception for investigation, not proof of theft, fraud or loss. A dashboard cannot independently verify physical stock; client work requires agreed count procedures, cut-off controls, source records, recount/approval evidence and documented adjustment authority.
