# SQL Case Study: Lakshadweep VS Maldives

## Introduction

This repository contains SQL scripts and data pertaining to a case study comparing the tourist destinations of Lakshadweep and Maldives. It includes database schema, sample data, and SQL queries for analysis.

## Database Schema

### Destination Table
- `DestinationID`: INT (Primary Key)
- `Name`: VARCHAR(255)
- `GeographicalLocation`: VARCHAR(255)
- `NumberofIslands`: INT
- `CapitalCity`: VARCHAR(255)
- `TourismRevenue`: DECIMAL(10,2)
- `UnderwaterActivities`: VARCHAR(1000)
- `Accessibility`: VARCHAR(255)
- `Culture`: VARCHAR(1000)
- `Language`: VARCHAR(255)
- `BestTimeToVisit`: VARCHAR(255)
- `VisaRequirements`: VARCHAR(255)
- `Currency`: VARCHAR(255)
- `Transportation`: VARCHAR(255)
- `AverageBudgetPerDay`: DECIMAL(10,2)
- `ShoppingOptions`: VARCHAR(1000)
- `DurationOfStay`: VARCHAR(255)
- `UniqueFeatures`: VARCHAR(1000)

### TouristAttractions Table
- `AttractionID`: INT (Primary Key)
- `DestinationID`: INT (Foreign Key referencing Destination(DestinationID))
- `Name`: VARCHAR(255)
- `Description`: VARCHAR(1000)

### TouristArrivals Table
- `ArrivalID`: INT (Primary Key)
- `DestinationID`: INT (Foreign Key referencing Destination(DestinationID))
- `Year`: INT
- `NumberofVisitors`: INT

### IndianTourists Table
- `IndianTouristID`: INT (Primary Key)
- `DestinationID`: INT (Foreign Key referencing Destination(DestinationID))
- `Year`: INT
- `NumberofTourists`: INT

## Sample Data

Sample data has been inserted into the tables to facilitate analysis and testing of SQL queries.
Link- https://nitish2162001.github.io/Websitep/case4.html

## Questions

1. Retrieve the number of visitors to the Maldives in 2019?
2. Retrieve the average budget per day and best time to visit for destinations with more than 10,000 tourists in 2022?
3. Retrieve the unique features of tourist attractions in Lakshadweep?
4. Retrieve the number of Indian tourists who visited the Maldives in 2021?
5. Find the destinations with the highest tourism revenue in 2022?

Feel free to explore the SQL scripts and data provided to answer these questions.

