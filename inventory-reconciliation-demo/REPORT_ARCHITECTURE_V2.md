# Power BI V2 report architecture

## Tables
Items (SKU dimension), Locations (location dimension), Transactions (movement fact), PhysicalCounts (stocktake fact), ActionLog (action fact), Calendar (date dimension).

## Relationships
Items[SKU] 1:* each fact table by SKU.
Locations[LocationID] 1:* each fact table by location.
Calendar[Date] 1:* Transactions[TransactionDate], PhysicalCounts[CountDate], ActionLog[RaisedDate].
Active, single-direction dimension-to-fact relationships. No fact-to-fact relationships.

## Pages
1. Executive Control Overview — completed counts, confirmed variance rate, absolute monetary variance, negative-stock lines, post-cut-off transactions and action backlog.
2. Count Variance Analysis — SKU, UOM, location, category; positive and negative variance separately.
3. Movement & Transfer Control — receipts, issues, adjustments, paired transfers and in-transit.
4. Replenishment & Inventory Health — reorder/safety stock, stock cover, ageing and expiry only when supported by validated lead time, demand, lot and expiry data.
5. Corrective Action & Root Cause — ownership, due dates, overdue, root cause, repeat issues and closure evidence.
6. Data Quality & Audit Trail — duplicate keys, missing values, negative stock, post-cut-off rows, unmatched transfers, costing caveats, refresh time and reconciliation sign-off.

## Hard controls
- Pending counts excluded from confirmed variance KPIs.
- Never sum incompatible UOMs into one quantity total.
- Exclude post-cut-off transactions unless approved cut-off bridge is documented.
- Do not declare transfers reconciled without transfer-level pairing.
- Variance is an exception, not proof of theft, fraud or loss.
- Monetary variance requires a documented costing basis.