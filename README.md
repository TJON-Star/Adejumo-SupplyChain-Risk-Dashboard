# Adejumo Agro Group - Supply Chain & Operational Risk Dashboard

> *32 risks. 8 categories. Built from 5 years of real operational risk management across farms, logistics, and vendors.*

![Dashboard Preview](Supply%20chain%20%26%20operational%20risk%20dashboard.jpeg)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)]()
[![Made with Power BI](https://img.shields.io/badge/Tool-Power%20BI-orange)]()
[![Framework: ISO 31000](https://img.shields.io/badge/Framework-ISO%2031000-blue)]()
[![Framework: NIST RMF](https://img.shields.io/badge/Framework-NIST%20RMF-darkblue)]()

---

## 👤 Author
**Taiwo Johnson** | GRC & Operational Risk Specialist
Sector: Agricultural Supply Chain | Fintech Operations
Tools: Power BI · Excel · ISO 31000 · NIST RMF · Supply Chain Risk Management

---

## 📋 Executive Summary

Adejumo Agro Group operates a multi-site agricultural enterprise across 3 farm sites, 2 operational locations, 1 central warehouse, and a vendor ecosystem of 20 to 50 active suppliers. The organisation's exposure spans agricultural, operational, supply chain, and business continuity risk domains - areas that are frequently underrepresented in GRC portfolios dominated by cybersecurity-focused assessments.

This dashboard was built to give operational and executive leadership visibility into the full risk landscape of a physical, multi-site business. It tracks **32 risks across 8 categories**, covering likelihood, impact, treatment status, and control ownership across the entire operation.

Key outcomes from the risk management program this dashboard supports:
- Annual incident costs reduced from ₦2M to ₦950k through preventive root-cause controls
- Vendor ecosystem risk reduced through structured scoring and quarterly performance reviews
- 100% of required compliance evidence delivered ahead of audit deadlines across two audit cycles
- 90% post-training pass rate across 12+ compliance training topics

The insight the dashboard surfaces that most GRC tools miss: **6 of the highest-scoring risks sit in supply chain and agricultural categories - not in IT or cybersecurity.** Operational risk in a physical business looks different from fintech GRC, and this dashboard reflects that reality.

---

## 🔭 Scope

| In Scope | Out of Scope |
|---|---|
| All operational risk across 3 farm sites and 2 operational locations | Cybersecurity and information security risk |
| Vendor and supply chain risk across 20-50 active suppliers | Financial risk and treasury management |
| Agricultural risk including crop, weather, and seasonal exposure | Strategic and market risk |
| Transportation and logistics risk | Individual employee performance risk |
| Inventory and procurement risk | Risks below the defined risk appetite threshold |
| Compliance risk across applicable regulatory obligations | Risks attributable solely to macro-economic factors |
| Business continuity risk across all operational sites | IT infrastructure risk (covered separately) |

---

## 📐 Assumptions

1. Risk ratings reflect the operational environment at the time of assessment - seasonal risks (e.g., harvest-period agricultural risk) will be higher at certain points in the year
2. Vendor risk scores are based on the active vendor ecosystem of 20-50 suppliers - the specific vendor mix changes, and scores should be updated when significant vendors are onboarded or offboarded
3. Likelihood scores reflect the frequency observed over the 5-year operational period covered by this assessment - they are not forward-looking projections
4. Impact scores reflect the financial and operational consequences experienced or estimated for Adejumo Agro Group specifically - they are not industry benchmarks
5. The 32 risks documented represent significant operational risks - this is not an exhaustive inventory of every possible operational event
6. Business continuity risk ratings assume current recovery capabilities - any reduction in backup resources, alternative supplier relationships, or staffing would increase residual risk ratings
7. Control effectiveness ratings reflect controls as operated, not as documented - where a gap existed between policy and practice, the operational reality was used for scoring

---

## 📊 Risk Rating Criteria

All risks are scored using a **5×5 likelihood and impact matrix** producing a risk score between 1 and 25. This follows ISO 31000 risk assessment principles.

### Likelihood Scale
| Score | Rating | Definition |
|---|---|---|
| 1 | Rare | Has not occurred in the 5-year operational period and is unlikely - less than once in 5 years |
| 2 | Unlikely | Has occurred once or twice in the 5-year period - less than once per year |
| 3 | Possible | Occurs periodically - approximately once per year |
| 4 | Likely | Occurs regularly - multiple times per year |
| 5 | Almost Certain | Occurs frequently - monthly or more |

### Impact Scale
| Score | Rating | Definition |
|---|---|---|
| 1 | Negligible | No meaningful disruption to operations - resolved within hours, no financial impact |
| 2 | Minor | Short-term operational disruption - resolved within days, limited financial impact (< ₦100k) |
| 3 | Moderate | Significant operational disruption - resolved within 1-2 weeks, moderate financial impact (₦100k-₦500k) |
| 4 | Major | Serious disruption to one or more sites - resolution takes weeks, major financial impact (₦500k-₦2M) |
| 5 | Critical | Catastrophic - multi-site disruption, potential business continuity failure, financial impact > ₦2M |

### Risk Rating Matrix
| Risk Score | Rating | Treatment Requirement |
|---|---|---|
| 20-25 | 🔴 Critical | Immediate treatment required - escalate to senior management |
| 12-19 | 🟠 High | Treatment plan required within 30 days |
| 6-11 | 🟡 Medium | Treatment plan required within 90 days - monitor monthly |
| 1-5 | 🟢 Low | Accept or monitor - review quarterly |

---

## 📊 Risk Categories Covered

| Category | Description |
|---|---|
| 🌾 Agricultural Risk | Crop, weather, and seasonal exposure |
| 🚛 Transportation Risk | Logistics disruptions and route failures |
| 🏭 Operational Risk | Process failures and site-level incidents |
| 📦 Inventory Risk | Stock shortfalls and over-ordering |
| 🤝 Vendor Risk | Supplier reliability and concentration |
| 📋 Compliance Risk | Regulatory and audit exposure |
| 🔗 Supply Chain Risk | End-to-end disruption scenarios |
| 🌐 Business Continuity Risk | Recovery planning and resilience gaps |

---

## 🤝 Vendor Risk Assessment

The vendor ecosystem of 20-50 active suppliers is one of the highest-concentration risk areas in the Adejumo operation. Vendor risk is assessed across five dimensions:

| Dimension | Weight | What It Measures |
|---|---|---|
| Reliability | 30% | On-time delivery rate, historical failure incidents |
| Quality | 25% | Product/service quality consistency, rejection rates |
| Financial Stability | 20% | Vendor financial health, signs of business distress |
| Concentration | 15% | Proportion of total supply dependent on single vendor |
| Compliance | 10% | Regulatory compliance, contractual adherence |

Vendors are scored 1-5 on each dimension. The weighted composite score produces a vendor risk rating:

| Composite Score | Vendor Risk Rating | Review Frequency |
|---|---|---|
| 1.0-1.9 | 🟢 Low Risk | Annual review |
| 2.0-2.9 | 🟡 Medium Risk | Semi-annual review |
| 3.0-3.9 | 🟠 High Risk | Quarterly review + improvement plan |
| 4.0-5.0 | 🔴 Critical Risk | Immediate escalation + alternative sourcing |

---

## 📐 5×5 Risk Matrix

```
Impact →    1-Negligible  2-Minor    3-Moderate  4-Major    5-Critical
Likelihood ↓
5-Almost     5            10         15          20 🔴       25 🔴
  Certain
4-Likely     4            8          12 🟠        16 🟠       20 🔴
3-Possible   3            6          9  🟡        12 🟠       15 🟠
2-Unlikely   2            4          6  🟡        8  🟡       10 🟡
1-Rare       1            2          3  🟢        4  🟢       5  🟢
```

---

## 🗂️ Risk Treatment Plan

| Risk Category | Treatment Priority | Primary Treatment | Control Owner | Target Completion |
|---|---|---|---|---|
| Agricultural Risk - Crop failure due to weather | High | Crop insurance, diversified planting schedule, weather monitoring | Farm Operations Manager | Ongoing |
| Transportation Risk - Route disruption | Medium | Alternative route mapping, backup logistics partners | Logistics Coordinator | Q3 |
| Vendor Risk - Single-source dependency | High | Dual-source all critical inputs, vendor performance scoring | Procurement Manager | Q2 |
| Inventory Risk - Stock shortfall at harvest | High | Minimum stock level policy, automated reorder triggers | Warehouse Manager | Q2 |
| Business Continuity - Site-level disruption | Medium | BCM plan documented, alternative site arrangements agreed | Operations Director | Q3 |
| Compliance Risk - Regulatory filing delays | Low | Compliance calendar, automated deadline reminders | GRC Specialist | Ongoing |

---

## 📈 Key Risk Indicators

The following KRIs are tracked monthly to provide early warning of risk deterioration:

| Key Risk Indicator | Threshold | Frequency | Owner |
|---|---|---|---|
| Vendor on-time delivery rate | < 85% triggers review | Monthly | Procurement Manager |
| Number of active single-source suppliers | > 3 triggers mitigation | Monthly | Procurement Manager |
| Inventory days below minimum stock level | > 5 days triggers escalation | Weekly | Warehouse Manager |
| Number of crop disease incidents reported | > 2 per quarter triggers response | Quarterly | Farm Operations Manager |
| Transportation incident rate | > 1 per month triggers review | Monthly | Logistics Coordinator |
| Compliance filing on-time rate | < 100% triggers immediate escalation | Monthly | GRC Specialist |
| Open high/critical risks without treatment plan | > 0 triggers escalation | Monthly | GRC Specialist |

---

## 📊 Management Summary

**Overall Risk Posture: AMBER - Improving**

As of the assessment date, the Adejumo Agro Group risk posture is rated Amber. The most significant risk concentration sits in the supply chain and vendor domains - reflecting the inherent dependency of agricultural operations on reliable input supply and logistics networks.

The preventive control program implemented over the assessment period produced measurable results: annual incident costs reduced from ₦2M to ₦950k, representing a 52.5% reduction. The vendor risk scoring program and quarterly performance reviews have reduced single-source dependency and improved supplier accountability.

Business continuity risk remains the area requiring the most attention - formal BCM documentation and tested recovery procedures are the priority for the next assessment period.

No risks are currently rated Critical. 8 risks are rated High and are in active treatment. The trend across all risk categories is improving.

---

## 🖼️ Dashboard Visuals

| File | Description |
|---|---|
| `Supply chain & operational risk dashboard.jpeg` | Full supply chain risk overview |
| `Vendor Risk.jpeg` | Vendor risk exposure and supplier scoring |
| `Operational risk and supply chain overview.jpeg` | Operational risk summary |
| `adejumo_supply_chain_risk_dashboard.html` | Open in browser for interactive dashboard |

---

## 🚀 How to Use

1. Open `adejumo_supply_chain_risk_dashboard.html` in any web browser for the interactive dashboard
2. Review the `Operational risk and supply chain overview.jpeg` for a snapshot of risk coverage
3. Browse `Vendor Risk.jpeg` for the vendor scoring matrix
4. Use README descriptions alongside visuals to understand risk tracking methodology

---

## 🛠️ Tech Stack

- **Tools:** Power BI, Excel, GitHub
- **Frameworks:** ISO 31000, NIST RMF, BCM Best Practice

---

## 🎓 Lessons Learned

**1. Operational risk in physical businesses is underserved by standard GRC frameworks**
Most GRC frameworks are written for technology and financial services environments. Applying ISO 31000 to an agricultural operation required significant adaptation - particularly for weather, crop, and logistics risks that have no direct equivalent in standard information security control libraries.

**2. Risk categories must reflect the actual business - not the framework**
The 8 categories in this dashboard were defined by mapping the actual operational activities of Adejumo Agro Group, not by copying a framework's taxonomy. Generic risk categories would have missed the specific exposure profile of a multi-site agricultural enterprise.

**3. Vendor risk is the most dynamic risk category**
The vendor ecosystem changed frequently - suppliers were onboarded and offboarded, performance varied seasonally, and new single-source dependencies emerged without formal review. The quarterly vendor review cadence was essential to keeping the risk register current.

**4. The risk heat map changed how management made decisions**
Before the dashboard, operational decisions about vendor relationships and inventory levels were made on intuition and experience. The heat map made risk concentration visible - management could see that vendor and supply chain risks clustered in the high-impact zone and responded by prioritising dual-sourcing.

**5. Incident cost data is the most persuasive metric for operational leadership**
Agricultural business owners respond to financial evidence more than risk scores. Showing that preventive controls reduced annual incident costs from ₦2M to ₦950k was more influential than any risk rating in securing management commitment to the control program.

**6. Business continuity planning cannot be deferred**
BCM was consistently deprioritised in favour of more immediate operational concerns. A single significant disruption - weather event, road closure, supplier failure - demonstrated the cost of under-investment in BCM documentation and became the catalyst for formalising recovery plans.

---

## ⚠️ Limitations

1. **Agricultural risk is inherently unpredictable** - Weather and climate risks are scored based on historical patterns but cannot fully account for unprecedented events. Climate change is increasing the frequency and severity of weather-related agricultural disruptions beyond historical baselines.
2. **Vendor scores are point-in-time** - Vendor performance changes. A vendor rated Low Risk today can deteriorate rapidly due to financial distress, management changes, or supply chain disruptions of their own. Continuous monitoring is essential.
3. **Qualitative scoring only** - Risk scores reflect professional judgement informed by 5 years of operational experience. They are not derived from actuarial models or quantitative loss data beyond the incident cost figures cited.
4. **32 risks does not mean 32 is complete** - The risks documented were identified through structured assessment. Emerging risks - new regulatory requirements, new product lines, market expansion - would require a new assessment cycle.
5. **No integration with operational systems** - The dashboard is manually updated from Excel data. It does not connect to procurement, inventory, or logistics systems in real time.
6. **BCM has not been tested** - Business continuity plans referenced in the BCM risk category have been documented but not formally tested through tabletop exercises or live rehearsals as of the assessment date.

---

## 🏭 How This Project Would Change in Production

| Portfolio Version | Production Version |
|---|---|
| Static Excel risk register, manually updated | Risk register integrated with ERP or supply chain management system - inventory, procurement, and logistics data feeds into risk scoring automatically |
| 32 risks across 8 categories | Full operational risk inventory - updated continuously as new activities, vendors, and sites are added |
| Qualitative scoring only | Qualitative baseline with quantitative overlay for high-rated risks - financial exposure in Naira, not just risk scores |
| Manual vendor scoring | Automated vendor scorecard - supplier delivery data, quality inspection results, and financial health indicators feed directly into vendor risk ratings |
| No alert mechanism | KRI thresholds trigger automated alerts - inventory below minimum stock level triggers immediate procurement notification |
| Dashboard reviewed periodically | Dashboard embedded in weekly operational management meeting - risk owners present status updates against their assigned risks |
| Single analyst | Risk owners embedded in every department - GRC specialist facilitates, operational managers own their risks |
| No BCM testing record | BCM plans formally tested twice annually - tabletop exercises documented, gaps closed, and test results recorded as audit evidence |
| GitHub-hosted portfolio | Hosted on internal sharepoint or GRC platform with access controls - board version and operational version separated |

---

## 🗺️ v2.0 Roadmap

- [ ] Integrate weather data APIs for real-time agricultural risk monitoring
- [ ] Expand compliance coverage to include food safety and logistics regulations
- [ ] Add automated vendor scorecard linked to procurement data
- [ ] Build BCM testing tracker and exercise log

---

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.
