# Spatial-Non-Stationarity: Carbon Modeling via GWR

## 📌 Context & Overview
Global statistical models often assume that the relationship between environmental drivers and carbon storage is constant across space. However, in heterogeneous landscapes, this "one-size-fits-all" approach masks local dynamics. This project implements **Geographically Weighted Regression (GWR)** to allow model coefficients to vary locally, providing a spatially explicit understanding of carbon determinants.

## 🎯 Objectives
* **Beyond Global Models:** Challenging the assumption of spatial stationarity in ecosystem service modeling.
* **Local Determinant Analysis:** Identifying where specific variables (Tree cover, LST, Rainfall) have the strongest local impact.
* **Comparative Performance:** Benchmarking GWR against traditional Global Linear Models (LM).

## 🛠️ Tech Stack & Methodology
* **Language/Tools:** R 📊 (`spgwr`, `gwmodel`).
* **Spatial Unit:** 2 km × 2 km regular grid (625 units).
* **Modeling Framework:** * **Global LM:** For baseline performance estimation.
    * **GWR:** Gaussian kernel with an optimized fixed bandwidth.
* **Comparison Metrics:** Adjusted $R^2$, Quasi-global $R^2$, and **AICc** (corrected Akaike Information Criterion).



## 🚀 Key Results
* **Performance Boost:** While the global model performed exceptionally well ($R^2 \approx 0.99$), the **GWR** further refined the predictions ($R^2 \approx 0.993$) and significantly lowered the **AICc**, confirming the presence of spatial non-stationarity.
* **Spatially Varying Coefficients:** * **Anthropogenic Pressure:** Agriculture and urban zones consistently show negative impacts on carbon, but their "strength of degradation" varies geographically.
    * **Ecological Efficiency:** Tree cover contribution to carbon stocks is non-stationary, revealing specific local contexts where reforestation is most effective.
* **Secondary Drivers:** Climatic variables (NDVI, LST) show locally significant pockets of influence, though land cover remains the dominant global driver.

## 🔮 Perspectives for Improvement
* **Machine Learning Integration:** Comparing GWR with **Geographical Random Forest** or spatial XGBoost to capture non-linear local effects.
* **Landscape Metrics:** Adding fragmentation and connectivity indices as local predictors.
* **Spatiotemporal GWR (GTWR):** Expanding the analysis to multiple years to see how the "geography of relationships" evolves over time.

---
*Precision Geostatistics: Capturing the Local Pulse of Ecosystem Services.*
