-- ============================================================
-- Project: AI-Powered IT Incident Prediction & Prevention System
-- File: SQL_Queries_IT_Incident_Analysis.sql
-- Author: Sandeep Jadhav
-- Purpose: Database creation and SQL analysis queries
-- ============================================================

-- 1. CREATE DATABASE
CREATE DATABASE AI_IT_Incident_DB;
USE AI_IT_Incident_DB;

-- 2. CREATE TABLE
CREATE TABLE Incident_Data (
    incident_id VARCHAR(20),
    timestamp DATETIME,
    server_id VARCHAR(20),
    department VARCHAR(50),
    environment VARCHAR(50),
    server_type VARCHAR(50),
    cpu_usage_pct DECIMAL(10,2),
    memory_usage_pct DECIMAL(10,2),
    disk_usage_pct DECIMAL(10,2),
    network_latency_ms DECIMAL(10,2),
    response_time_ms DECIMAL(10,2),
    error_count INT,
    active_users INT,
    packet_loss_pct DECIMAL(10,2),
    temperature_c DECIMAL(10,2),
    uptime_days INT,
    previous_incidents_30d INT,
    maintenance_due VARCHAR(10),
    anomaly_score DECIMAL(10,2),
    incident_occurred VARCHAR(5),
    severity VARCHAR(30),
    incident_type VARCHAR(50),
    status VARCHAR(30),
    resolution_time_minutes INT,
    root_cause VARCHAR(255),
    year INT,
    month INT,
    month_name VARCHAR(20),
    day INT,
    hour INT,
    day_name VARCHAR(20)
);

-- 3. BASIC DATA CHECKS

-- Total records
SELECT COUNT(*) AS total_records
FROM Incident_Data;

-- First 10 rows
SELECT *
FROM Incident_Data
LIMIT 10;

-- Incident target distribution
SELECT incident_occurred, COUNT(*) AS total_records
FROM Incident_Data
GROUP BY incident_occurred;

-- 4. KPI QUERIES

-- Total incidents
SELECT COUNT(*) AS total_incidents
FROM Incident_Data
WHERE incident_occurred = 'Yes';

-- Total normal records
SELECT COUNT(*) AS normal_records
FROM Incident_Data
WHERE incident_occurred = 'No';

-- Incident rate
SELECT
    ROUND(
        SUM(CASE WHEN incident_occurred = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS incident_rate_percentage
FROM Incident_Data;

-- Open incidents
SELECT COUNT(*) AS open_incidents
FROM Incident_Data
WHERE status = 'Open';

-- Critical incidents
SELECT COUNT(*) AS critical_incidents
FROM Incident_Data
WHERE severity = 'Critical';

-- Average anomaly score
SELECT ROUND(AVG(anomaly_score), 2) AS average_anomaly_score
FROM Incident_Data;

-- 5. INCIDENT ANALYSIS

-- Incidents by severity
SELECT severity, COUNT(*) AS total_incidents
FROM Incident_Data
WHERE incident_occurred = 'Yes'
GROUP BY severity
ORDER BY total_incidents DESC;

-- Incidents by incident type
SELECT incident_type, COUNT(*) AS total_incidents
FROM Incident_Data
WHERE incident_occurred = 'Yes'
GROUP BY incident_type
ORDER BY total_incidents DESC;

-- Incidents by status
SELECT status, COUNT(*) AS total_incidents
FROM Incident_Data
WHERE incident_occurred = 'Yes'
GROUP BY status
ORDER BY total_incidents DESC;

-- Incidents by department
SELECT department, COUNT(*) AS total_incidents
FROM Incident_Data
WHERE incident_occurred = 'Yes'
GROUP BY department
ORDER BY total_incidents DESC;

-- Incidents by environment
SELECT environment, COUNT(*) AS total_incidents
FROM Incident_Data
WHERE incident_occurred = 'Yes'
GROUP BY environment
ORDER BY total_incidents DESC;

-- Incidents by server type
SELECT server_type, COUNT(*) AS total_incidents
FROM Incident_Data
WHERE incident_occurred = 'Yes'
GROUP BY server_type
ORDER BY total_incidents DESC;

-- 6. SYSTEM PERFORMANCE ANALYSIS

-- CPU usage: normal vs incident
SELECT incident_occurred, ROUND(AVG(cpu_usage_pct), 2) AS avg_cpu_usage
FROM Incident_Data
GROUP BY incident_occurred;

-- Memory usage: normal vs incident
SELECT incident_occurred, ROUND(AVG(memory_usage_pct), 2) AS avg_memory_usage
FROM Incident_Data
GROUP BY incident_occurred;

-- Disk usage: normal vs incident
SELECT incident_occurred, ROUND(AVG(disk_usage_pct), 2) AS avg_disk_usage
FROM Incident_Data
GROUP BY incident_occurred;

-- Response time: normal vs incident
SELECT incident_occurred, ROUND(AVG(response_time_ms), 2) AS avg_response_time
FROM Incident_Data
GROUP BY incident_occurred;

-- Network latency: normal vs incident
SELECT incident_occurred, ROUND(AVG(network_latency_ms), 2) AS avg_network_latency
FROM Incident_Data
GROUP BY incident_occurred;

-- Error count: normal vs incident
SELECT incident_occurred, ROUND(AVG(error_count), 2) AS avg_error_count
FROM Incident_Data
GROUP BY incident_occurred;

-- Anomaly score: normal vs incident
SELECT incident_occurred, ROUND(AVG(anomaly_score), 2) AS avg_anomaly_score
FROM Incident_Data
GROUP BY incident_occurred;

-- 7. TIME-BASED ANALYSIS

-- Monthly incident trend
SELECT month, month_name, COUNT(*) AS total_incidents
FROM Incident_Data
WHERE incident_occurred = 'Yes'
GROUP BY month, month_name
ORDER BY month;

-- Hourly incident trend
SELECT hour, COUNT(*) AS total_incidents
FROM Incident_Data
WHERE incident_occurred = 'Yes'
GROUP BY hour
ORDER BY hour;

-- Incidents by day name
SELECT day_name, COUNT(*) AS total_incidents
FROM Incident_Data
WHERE incident_occurred = 'Yes'
GROUP BY day_name
ORDER BY total_incidents DESC;

-- 8. MAINTENANCE AND RISK ANALYSIS

-- Incidents by maintenance status
SELECT maintenance_due, COUNT(*) AS total_incidents
FROM Incident_Data
WHERE incident_occurred = 'Yes'
GROUP BY maintenance_due
ORDER BY total_incidents DESC;

-- Average anomaly score by maintenance status
SELECT maintenance_due, ROUND(AVG(anomaly_score), 2) AS avg_anomaly_score
FROM Incident_Data
GROUP BY maintenance_due;

-- Top 10 high-risk incident records
SELECT
    incident_id,
    server_id,
    department,
    environment,
    server_type,
    anomaly_score,
    severity,
    status
FROM Incident_Data
WHERE incident_occurred = 'Yes'
ORDER BY anomaly_score DESC
LIMIT 10;

-- Servers with repeated incidents
SELECT server_id, COUNT(*) AS total_incidents
FROM Incident_Data
WHERE incident_occurred = 'Yes'
GROUP BY server_id
ORDER BY total_incidents DESC
LIMIT 10;

-- 9. RESOLUTION TIME ANALYSIS

-- Average resolution time by severity
SELECT
    severity,
    ROUND(AVG(resolution_time_minutes), 2) AS avg_resolution_time
FROM Incident_Data
WHERE incident_occurred = 'Yes'
  AND resolution_time_minutes > 0
GROUP BY severity
ORDER BY avg_resolution_time DESC;

-- Average resolution time by incident type
SELECT
    incident_type,
    ROUND(AVG(resolution_time_minutes), 2) AS avg_resolution_time
FROM Incident_Data
WHERE incident_occurred = 'Yes'
  AND resolution_time_minutes > 0
GROUP BY incident_type
ORDER BY avg_resolution_time DESC;

-- Open incidents needing attention
SELECT
    incident_id,
    server_id,
    department,
    environment,
    server_type,
    anomaly_score,
    severity,
    incident_type,
    status
FROM Incident_Data
WHERE status = 'Open'
ORDER BY anomaly_score DESC;

-- 10. BUSINESS INSIGHT QUERIES

-- Department incident rate
SELECT
    department,
    COUNT(*) AS total_records,
    SUM(CASE WHEN incident_occurred = 'Yes' THEN 1 ELSE 0 END) AS total_incidents,
    ROUND(
        SUM(CASE WHEN incident_occurred = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS incident_rate_percentage
FROM Incident_Data
GROUP BY department
ORDER BY incident_rate_percentage DESC;

-- Server type incident rate
SELECT
    server_type,
    COUNT(*) AS total_records,
    SUM(CASE WHEN incident_occurred = 'Yes' THEN 1 ELSE 0 END) AS total_incidents,
    ROUND(
        SUM(CASE WHEN incident_occurred = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS incident_rate_percentage
FROM Incident_Data
GROUP BY server_type
ORDER BY incident_rate_percentage DESC;

-- High-risk system records
SELECT
    incident_id,
    server_id,
    department,
    environment,
    server_type,
    cpu_usage_pct,
    memory_usage_pct,
    disk_usage_pct,
    response_time_ms,
    error_count,
    anomaly_score,
    incident_occurred
FROM Incident_Data
WHERE anomaly_score >= 70
ORDER BY anomaly_score DESC;

-- ============================================================
-- END OF SQL FILE
-- ============================================================
