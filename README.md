# 🚀 AI-Powered IT Incident Prediction & Prevention System

📌 Project Overview

The AI-Powered IT Incident Prediction & Prevention System is a complete data science and machine learning project designed to predict IT incidents before they occur.

This project analyzes server performance metrics such as CPU usage, memory usage, disk usage, network latency, response time, error count, anomaly score, and maintenance status to identify high-risk infrastructure and support proactive IT operations.

The final solution includes **Python-based analysis, machine learning models, model evaluation, and a Power BI dashboard** for business insights.
 🎯 Business Problem

System outages and IT incidents can cause:

* 💸 Financial losses
* ⏱️ Business downtime
* 😟 Poor customer experience
* 🛠️ Increased incident response workload
* 📉 Reduced system reliability

Traditional monitoring often detects problems after they occur. This project uses predictive analytics to identify possible incidents early.

💡 Solution

This project uses machine learning to predict whether an IT incident is likely to occur.

The system helps IT teams:

* Detect risk patterns early
* Identify high-risk servers
* Monitor system performance
* Reduce unplanned outages
* Improve incident response time
* Support proactive maintenance

 🧠 Technologies Used

| Category         | Tools                                             |
| ---------------- | ------------------------------------------------- |
| Programming      | Python                                            |
| Data Analysis    | Pandas, NumPy                                     |
| Visualization    | Matplotlib, Seaborn                               |
| Machine Learning | Scikit-learn                                      |
| Model Used       | Logistic Regression, Decision Tree, Random Forest |
| Dashboard        | Power BI                                          |
| Repository       | GitHub                                            |
| File Formats     | CSV, IPYNB, PBIX, PKL                             |

 📂 Project Structure

text
AI-Powered-IT-Incident-Prediction-Prevention-System
│
├── 01_Phase1_Data_Understanding_Cleaning.ipynb
├── 02_Phase2_EDA_Visualization.ipynb
├── 03_Phase3_Feature_Engineering.ipynb
├── 04_Phase4_Random_Forest_Model.ipynb
├── 05_Phase5_Model_Comparison_Evaluation.ipynb
│
├── Cleaned_IT_Incident_Data.csv
├── AI_IT_Incident_Prediction_Dashboard.pbix
├── best_it_incident_model.pkl
│
├── README.md
└── LICENSE
📊 Dataset Information

The dataset contains 1,000 IT system monitoring records with server performance and incident details.

 Important Columns

| Column               | Meaning                        |
| -------------------- | ------------------------------ |
| `cpu_usage_pct`      | CPU utilization percentage     |
| `memory_usage_pct`   | Memory utilization percentage  |
| `disk_usage_pct`     | Disk usage percentage          |
| `network_latency_ms` | Network delay in milliseconds  |
| `response_time_ms`   | Application response time      |
| `error_count`        | Number of system errors        |
| `packet_loss_pct`    | Network packet loss percentage |
| `temperature_c`      | Server temperature             |
| `anomaly_score`      | Risk/anomaly score             |
| `incident_occurred`  | Target column: Yes or No       |

🧹 Phase 1: Data Understanding and Cleaning

In this phase:

* Loaded the IT incident dataset
* Checked rows and columns
* Checked missing values
* Removed duplicates
* Converted timestamp into datetime format
* Cleaned incident-related fields
* Saved the cleaned dataset

✅ Output:

text
Cleaned_IT_Incident_Data.csv
 📈 Phase 2: Exploratory Data Analysis

In this phase, different patterns were analyzed:

* Incident distribution
* Severity analysis
* Incident type analysis
* Department-wise incidents
* Server type incidents
* Monthly incident trend
* Hourly incident trend
* CPU, memory, disk and response-time comparison
* Error count and anomaly score analysis
* Correlation heatmap
 Key EDA Insights

* Incident records are lower than normal records, creating an imbalanced dataset.
* CPU usage, response time, error count and anomaly score are strong indicators of incidents.
* Some server types and departments show higher incident risk.
* Open and critical incidents require faster attention.

 🏗️ Phase 3: Feature Engineering

New features were created to improve model performance:

* Average resource usage
* Error rate per 100 users
* High utilization flag
* Month, hour and day-of-week features
* Encoded categorical columns
* Converted target column into numeric form

Target mapping:

text
No  = 0
Yes = 1


The dataset was split into:

text
80% Training Data
20% Testing Data


🤖 Phase 4: Random Forest Model

A Random Forest model was trained to predict IT incidents.

The model was used to:

* Learn incident patterns
* Predict incident occurrence
* Calculate prediction probability
* Identify important features

🧪 Phase 5: Model Comparison and Evaluation

Multiple models were compared:

| Model               | Purpose                       |
| ------------------- | ----------------------------- |
| Logistic Regression | Baseline classification model |
| Decision Tree       | Simple tree-based model       |
| Random Forest       | Final robust model            |

Evaluation metrics used:

* Accuracy
* Precision
* Recall
* F1-score
* ROC-AUC
* Confusion Matrix
Important Note

For IT incident prediction, Recall is very important because missing a real incident can cause downtime.
 📊 Phase 6: Power BI Dashboard

A professional Power BI dashboard was created with four pages:
 📌 Page 1: Executive Overview

* Total Records
* Total Incidents
* Incident Rate
* Open Incidents
* Average Risk Score
* Monthly Incident Trend
* Incident Severity
* Incident Types
 ⚙️ Page 2: System Performance

* CPU Usage
* Memory Usage
* Disk Usage
* Response Time
* Network Latency
* Error Count
* Anomaly Score

 🚨 Page 3: Incident Analysis

* Critical Incidents
* Resolved Incidents
* Monitoring Incidents
* Open Incidents
* Incidents by Department
* Incidents by Server Type
* Incidents by Environment
* Maintenance Analysis
* High-Risk Server Table

 📌 Page 4: Summary

* Key Findings
* Business Recommendations
* Final Conclusion


📌 Key Business Insights

* High CPU usage increases incident risk.
* High response time may indicate system slowdown.
* Higher error count is strongly linked to incidents.
* High anomaly score helps detect risky system behavior.
* Maintenance-due systems need proactive monitoring.
* Critical and open incidents should be prioritized.


 ✅ Business Recommendations

* Monitor high-risk servers continuously.
* Set alerts for high anomaly scores.
* Prioritize critical and open incidents.
* Schedule preventive maintenance for risky infrastructure.
* Use CPU, memory, disk, response time and error count as early-warning indicators.
* Review departments and server types with high incident rates.

 🖥️ Power BI Dashboard

The dashboard file is included in this repository:

text
AI_IT_Incident_Prediction_Dashboard.pbix


It provides interactive insights into:

* Incident trends
* Server performance
* Risk indicators
* Operational reliability
* Maintenance status
* Business recommendations

 🏆 Final Outcome

This project successfully demonstrates how machine learning and business intelligence can be used together to improve IT operations.

The system helps organizations move from **reactive incident handling** to **proactive incident prevention**.

📌 Project Status

text
✅ Completed

 👨‍💻 Author

Sandeep Jadhav

GitHub: `jadhavsandep`
 📄 License

This project is licensed under the MIT License.
