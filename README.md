# 🌍 World Population Dashboard (1970–2022)

This interactive dashboard visualizes global population trends from 1970 to 2022, with a special focus on continent-level insights. Built using **PostgreSQL**, **DAX**, and **Power BI**, it enables users to explore demographic patterns through dynamic filters and rich visual storytelling.

<img width="1307" height="732" alt="Screenshot 2025-12-08 211028" src="https://github.com/user-attachments/assets/72e013a1-0853-4b66-bcce-fba9f69cb692" />
<img width="1306" height="732" alt="Screenshot 2025-12-08 211103" src="https://github.com/user-attachments/assets/3366b615-76c8-4322-a696-341a5bdc971b" />

## 📊 Tools & Technologies
- **PostgreSQL**: Data storage and querying  
- **Power BI**: Dashboard design and interactivity  
- **DAX**: Advanced calculations and KPI logic  

## 🧭 Dashboard Structure
The dashboard includes two main pages:

### 1. Overview Page
- Global population trends across all continents  
- Time-series line charts showing growth over decades  
- Summary KPIs: Total Population, Area, Density, Number of Countries  
- Interactive filters for Year, Continent, and Country  

### 2. Continent Page
- Focused analysis by continent
- KPI cards with fallback logic for:
- Population
- Area
- Density
- Country Count
- Charts:
- Top Countries by Population
- Top Countries by Area
- Population Distribution (Pie Chart)
- Area and Density Distribution (Pie Charts)
- Filters: Year, Continent, Country

## 🔍 Key Features
- **Year Filter**: Select any year from 1970 to 2022  
- **Continent Filter**: Drill down into specific regions  
- **Country Filter**: Analyze individual countries  
- **Fallback Logic**: Ensures consistent KPI display even when filters are applied  
- **Responsive Design**: Optimized for clarity and usability  

## 📌 Insights You Can Explore
- Which countries have the highest population growth?  
- How does population density vary across continents?  
- What are the largest countries by area?  
- How has global population evolved over time?  
