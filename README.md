# Hotel Reservation Analysis

This repository contains the analysis of hotel reservations and booking rates, with the primary focus on:
1. **Popular choices of booking rates by customer segments**.
2. **Typical guests who do online check-ins, compared across different weekdays**.
3. **Average night revenue per occupied capacity by guest segment**.
4. **Bonus analysis estimating the impact on room revenue if online check-ins were doubled**.

The project is organized into the following folders:
- **Data sources**: Contains the CSV data files.
- **SQL Queries and Results**: Contains SQL queries and the resulting data from these queries.
- **Power BI**: Contains the Power BI dashboard used to visualize the analysis.

## Repository Structure

### 1. Data Sources
This folder contains the raw data used for analysis:
- `reservations.csv`: Contains reservation data such as booking dates, guest attributes, and room costs.
- `rates.csv`: Contains information about different booking rates used in the hotel.

These data sources are the basis for the SQL queries and Power BI visualizations.

### 2. SQL Queries and Results
This folder includes:
- **SQL queries**: The SQL scripts that perform various analyses based on the data.
  - Queries are written to:
    1. Analyze popular booking rates by customer segments (`AgeGroup`, `Gender`, `NationalityCode`).
    2. Identify typical guests who use online check-ins and compare them by weekday.
    3. Calculate the average night revenue per occupied capacity for different customer segments.
    4. Provide a bonus analysis estimating the impact on room revenue if online check-ins were doubled.
- **Query Results**: The results of the SQL queries (stored as CSV files) are based on the reservation and rate data analysis.

### 3. Power BI Dashboard
The **Power BI** folder contains the Power BI `.pbix` file, which provides interactive visualizations for the analysis:
- **Visual 1**: Displays popular booking rates by customer segments.
- **Visual 2**: Analyzes guests who complete online check-ins by weekday.
- **Visual 3**: Shows the average night revenue per occupied capacity for each guest segment.
- **Bonus Visual**: Estimates the impact on total room revenue if online check-ins were doubled.

## Key Analyses

1. **Popular Booking Rates by Customer Segment**:
   - Analyzes the most popular booking rates (`ShortRateName` or `RateName`) based on guest demographics (age, gender, nationality).

2. **Online Check-in Behavior**:
   - Compares typical guests who use online check-ins and examines the behavior across different weekdays.

3. **Average Night Revenue per Occupied Capacity**:
   - Calculates which customer segment is the most profitable based on the average night revenue per occupied space unit.

4. **Bonus: Doubling Online Check-ins**:
   - Estimates how much total room revenue would increase if the overall usage of online check-ins doubled.

## How to Use
1. **Data Sources**: The `Data sources` folder contains raw data in CSV format. These files can be used for additional analysis.
2. **SQL Queries and Results**: Run the SQL scripts to replicate or modify the results for further analysis. The SQL queries assume that the data from the `Data sources` folder is loaded into a MySQL database.
3. **Power BI Dashboard**: The Power BI `.pbix` file allows you to interact with the data and visualizations. You can explore customer segments, analyze revenue trends, and experiment with filters.

## Setup Instructions

### Prerequisites
- **MySQL** for running SQL queries.
- **Power BI Desktop** to view and interact with the dashboard.
- **CSV-compatible software** (e.g., Excel) to view raw data.

### Instructions
1. Load the data from the `Data sources` folder into your MySQL database.
2. Run the SQL queries from the `SQL` folder to analyze the data.
3. Open the `.pbix` file in Power BI Desktop to explore the interactive visualizations.
