# Independent workbook audit — findings before native Power BI sign-off

**Source:** Agro_Inventory_Reconciliation_PowerBI_Demo.xlsx. **Data:** simulated. This tests internal consistency only, not real-world stock.

## Passed
- Items: 12 rows, 12 unique SKU keys.
- Locations: 4 rows, 4 unique LocationID keys.
- Transactions: 288 rows, 288 unique TransactionID values.
- PhysicalCounts: 48 rows, 48 unique CountID values.
- ActionLog: 37 rows, 37 unique ActionID values.
- No duplicate full rows or orphan SKU/location keys in the five tables.
- VarianceQty equals PhysicalQty minus BookQtyAtCount on all 48 rows.
- 36 non-zero variance lines among 47 Counted lines.

## Critical findings

### 1. Stocktake cut-off mismatch
Count date is 31 March 2026, but four transactions are dated 1 April:
- PK003 / LOC02: Transfer In 48
- CON001 / LOC04: Transfer Out 86
- FG001 / LOC02: Receipt 90
- LV002 / LOC03: Receipt 54

All 48 book quantities match the ledger only when those 1 April records are included. Recalculate the ledger through 31 March and four book balances no longer match. Confirm the actual count cut-off and document an approved cut-off bridge or correct the snapshot. Do not silently backdate or delete records.

### 2. Negative book balances
12 SKU/location lines have negative book quantities. Examples: PK002/LOC02 -243; LV002/LOC02 -345; CON002/LOC04 -306; CON001/LOC02 -276; CON001/LOC04 -130. Investigate issue timing, receipt posting, transfers, UOM conversion and cut-off. Show negative balances as exceptions, not available stock.

### 3. Transfer imbalance
Transfer In totals 1,461; Transfer Out totals 1,412; net +49. Transfer rows lack TransferID, from/to location, paired transaction ID and lifecycle status. Add those fields and reconcile each transfer at SKU/UOM level. Aggregate net is a flag, not proof of an error.

### 4. Action against a pending count
ACT-028 links FG002/LOC01 variance +8, but the matching count is Pending. Treat as preliminary, not a confirmed variance. Add confirmation status, reviewer and confirmation date.

### 5. Weak action workflow
All 37 actions have the same issue type, owner and next action. There is no due date, priority, root cause, escalation, closure date, evidence reference or reviewer. No action is Closed. Add those controls before using action closure or overdue KPIs.

## Other gaps / missed opportunities
- Add a Calendar dimension and relationships to all date fields.
- Add transfer lifecycle and in-transit stock.
- Add batch/lot, expiry and FEFO/FIFO controls where relevant to the product.
- Add supplier/customer and source-document registers.
- Add UOM conversion controls.
- Use ReorderPoint and SafetyStock only after validating whether they apply by SKU or location and establishing lead-time/demand assumptions.
- Add ABC/XYZ segmentation only after cost and consumption data are reliable.
- Add slow-moving, obsolete, damaged and near-expiry analysis.
- Document costing basis (FIFO, weighted average, standard cost) and effective-dated cost source before treating monetary variance as defensible.
- Add source lineage, refresh timestamp, reconciliation sign-off and report owner.
- Current data covers only a short period; it is not enough for robust seasonality or demand forecasting.

## Recommended report pages
1. Executive Control Overview.
2. Count Variance Analysis.
3. Movement & Transfer Control.
4. Replenishment & Inventory Health (after source prerequisites).
5. Corrective Action & Root Cause.
6. Data Quality & Audit Trail.

## Commercial positioning
Sell an inventory reconciliation and control-support service, not merely a dashboard. Scope: clean item/location masters, reconcile ledger at an agreed cut-off, analyse client physical counts, investigate exceptions, trace transfers, track corrective actions and deliver a management report. Do not promise theft detection, guaranteed accuracy, savings or loss prevention without evidence and agreed procedures.