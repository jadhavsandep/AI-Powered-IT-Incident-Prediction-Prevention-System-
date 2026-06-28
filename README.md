🚀 AI-Powered IT Incident Prediction & Prevention System
📌 Project Overview

This project predicts IT incidents using Python, machine learning, and Power BI.
It analyzes server performance metrics such as CPU usage, memory usage, disk usage, response time, network latency, error count, anomaly score, and maintenance status.

The goal is to help IT teams identify high-risk systems early and reduce unplanned outages.

🎯 Business Problem

System outages can cause downtime, financial loss, and poor user experience.
Traditional monitoring often detects problems after they happen. This project uses predictive analytics to detect incident risk before failure occurs.

💡 Solution

The system uses machine learning models to predict whether an IT incident will occur.

Target column:

No  = No incident
Yes = Incident occurred
🧠 Technologies Used
Area	Tools
Programming	Python
Data Analysis	Pandas, NumPy
Visualization	Matplotlib, Seaborn
Machine Learning	Scikit-learn
Dashboard	Power BI
Version Control	GitHub
📂 Project Files
01_Phase1_Data_Understanding_Cleaning.ipynb
02_Phase2_EDA_Visualization.ipynb
03_Phase3_Feature_Engineering.ipynb
04_Phase4_Random_Forest_Model.ipynb
05_Phase5_Model_Comparison_Evaluation.ipynb
AI_IT_Incident_Prediction_Dashboard.pbix
Cleaned_IT_Incident_Data.xls
README.md
LICENSE
📊 Project Phases
Phase 1: Data Understanding & Cleaning

Loaded the dataset, checked missing values, cleaned data, and prepared it for analysis.

Phase 2: Exploratory Data Analysis

Analyzed incident trends, severity, server type, department, CPU usage, memory usage, response time, and anomaly score.

Phase 3: Feature Engineering

Created new features, encoded categorical columns, and prepared training and testing data.

Phase 4: Machine Learning Model

Built a Random Forest model to predict IT incidents.

Phase 5: Model Evaluation

Compared models using accuracy, precision, recall, F1-score, ROC-AUC, and confusion matrix.

Phase 6: Power BI Dashboard

Created an interactive dashboard with four pages:

Executive Overview
System Performance
Incident Analysis
Summary
📌 Key Insights
High CPU usage increases incident risk.
High response time indicates possible system slowdown.
Error count and anomaly score are strong incident indicators.
Open and critical incidents need faster action.
Maintenance-due servers should be monitored closely.
✅ Business Recommendations
Monitor high-risk servers continuously.
Set alerts for high anomaly scores.
Prioritize critical and open incidents.
Schedule preventive maintenance.
Use Power BI dashboard insights for proactive IT operations.
🏆 Final Outcome

This project demonstrates how machine learning and business intelligence can help move IT operations from reactive incident handling to proactive incident prevention.

👨‍💻 Author

Sandeep Jadhav

GitHub: jadhavsandep

📄 License

This project is licensed under the MIT License.




