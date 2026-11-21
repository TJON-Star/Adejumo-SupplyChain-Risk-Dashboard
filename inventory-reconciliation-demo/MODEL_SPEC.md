# Power BI model specification

## Tables
- Items: dimension, one row per SKU.
- Locations: dimension, one row per storage location.
- Transactions: movement fact; includes opening balance records.
- PhysicalCounts: stocktake fact; 48 rows (47 Counted, 1 Pending).
- ActionLog: corrective-action fact; 37 rows.

## Relationships
Items[SKU] → Transactions[SKU], PhysicalCounts[SKU], ActionLog[SKU]
Locations[LocationID] → Transactions[LocationID], PhysicalCounts[LocationID], ActionLog[LocationID]

All relationships: active, one-to-many, single direction from dimensions to facts.

## Slicers
Category, Department, LocationName, CountStatus, SKU.

## Interpretation
VarianceQty = PhysicalQty − BookQtyAtCount. Negative means physical below book; positive means physical above book. Pending count rows must not enter completed-count KPIs. Quantities use heterogeneous units of measure; avoid unfiltered totals. Exclude RecordType=Opening from movement reporting. ActionLog contains 23 Open and 14 In Progress records, with no Closed records in this workbook.
