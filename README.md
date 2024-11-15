# DBT and Airflow Integration for ELT

This project demonstrates an end-to-end ELT (Extract, Load, Transform) pipeline using DBT (Data Build Tool) and Apache Airflow, integrated with Snowflake as the data warehouse. It automates data transformations, tests, and snapshots while providing seamless orchestration using Airflow.

## Project Overview

The objective of this project is to build a robust and automated ELT pipeline:

Source Data: Stock market data ingested into the Snowflake database.

Transformations: Calculations for moving averages (7-day) and Relative Strength Index (RSI) using DBT models.

Snapshots: Historical data snapshots managed by DBT.

Orchestration: Airflow DAGs to execute DBT commands (run, test, snapshot).
