# Agro-Processing Inventory Reconciliation Dashboard

**Portfolio demonstration | Power BI + Excel | Simulated data only**

This project demonstrates an inventory reconciliation and stock-control reporting workflow for a fictional agro-processing business. It is designed to show how inventory records, stock movements, physical counts and corrective actions can be structured for operational oversight.

> **Data boundary:** All item names, quantities, dates, locations, transactions, unit costs and variances in this demonstration are simulated. This is not actual Adejumo company data, a client engagement, an independently verified stocktake, or evidence of realised savings.

## Business scenario

A fictional agro-processing business holds raw materials, packaging, consumables and finished goods across four stores. Management needs visibility into recorded stock, physical count results, discrepancies and investigation status.

The demonstration covers:
- 12 inventory items across four inventory categories.
- Four stock locations.
- Simulated movements from 1 January to 31 March 2026.
- Physical count snapshot dated 31 March 2026.
- Discrepancy and corrective-action tracking.

## Data model

Import the five CSV files in this folder into Power BI Desktop. These repository CSVs are a compact, illustrative sample for quick inspection. The downloadable Excel workbook created in this conversation contains the larger simulated dataset; do not combine the compact CSV sample with the workbook tables in one model.

| Table | Grain | Purpose |
|---|---|---|
| Items | One row per SKU | Item master and reorder parameters |
| Locations | One row per location | Store/location dimension |
| Transactions | One row per movement | Receipts, issues, transfers and adjustments |
| PhysicalCounts | One row per SKU/location count | Book quantity, physical count and variance |
| ActionLog | One row per discrepancy action | Investigation ownership and status |

### Relationships

Create one-to-many, single-direction relationships:
- Items[SKU] → Transactions[SKU]
- Items[SKU] → PhysicalCounts[SKU]
- Items[SKU] → ActionLog[SKU]
- Locations[LocationID] → Transactions[LocationID]
- Locations[LocationID] → PhysicalCounts[LocationID]
- Locations[LocationID] → ActionLog[LocationID]

## Reconciliation logic

**Variance Quantity = Physical Quantity − Book Quantity**

- Negative variance: physical count is below the recorded balance.
- Positive variance: physical count is above the recorded balance.
- Zero variance: physical and recorded quantities agree.

Only records with CountStatus = "Counted" should be included in confirmed physical-count KPIs. A variance is an exception requiring investigation; it is not, by itself, proof of theft, loss or fraud.

## Recommended report pages

1. **Inventory Overview:** count completion, variance lines, variance rate and open actions.
2. **Variance Analysis:** discrepancies by SKU, category and location.
3. **Stock Movements:** receipts and issues over time by item and location.
4. **Corrective Actions:** action status, owner, ageing and closure evidence.

## Power BI setup

1. Open Power BI Desktop.
2. Select Home → Get Data → Text/CSV.
3. Import the five CSV files.
4. Set date columns to Date and quantity/value columns to appropriate numeric types.
5. Create the relationships described above.
6. Add measures from `PowerBI_Measures.dax`.
7. Build the report pages using the recommended visuals.

## Control and evidence considerations

Before using this approach in a live business:
- Agree the stocktake cut-off date and transaction cut-off procedure.
- Confirm SKU, unit of measure and location master-data quality.
- Retain signed or otherwise authorised count sheets.
- Record recounts and approvals for adjustments.
- Separate stock custody, count and adjustment approval where practicable.
- Preserve source documents for receipts, issues, transfers and returns.
- Document exclusions, damaged/expired stock and goods in transit.
- Replace simulated unit costs with approved client cost data before valuation reporting.

Remote reconciliation depends on client-provided source records and physical count evidence. This dashboard does not independently verify physical stock.

## Files

- `Items.csv`
- `Locations.csv`
- `Transactions.csv`
- `PhysicalCounts.csv`
- `ActionLog.csv`
- `PowerBI_Measures.dax`

The companion Excel workbook can be downloaded from the ChatGPT conversation where this project was created. The CSVs committed here are compact sample extracts, not a byte-for-byte export of that workbook. For a single consistent Power BI model, import either the workbook's five full tables or the five repository CSV samples—not both.

## Author

Taiwo Johnson — Operations, Supply Chain and Risk Controls Portfolio
