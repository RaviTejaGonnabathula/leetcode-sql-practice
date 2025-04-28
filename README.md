#  LeetCode SQL Practice - Datasets & Problem Statements

This repository contains datasets and problem statements for 66 popular SQL questions from LeetCode.  
The goal is to practice solving SQL problems directly on **Microsoft SQL Server** using clean sample datasets.

## 📂 Directory/Folder Structure:

leetcode-sql-practice/

│

├── datasets/

│   ├── leetcode_sql_practice_dataset.sql

│   └── README_DATASETS.md

│
├── questions/
│   ├── Easy/
│   │    ├── 175_combine_two_tables.md
│   │    ├── 176_second_highest_salary.md
│   │    └── ... (easy questions)
│   ├── Medium/
│   │    ├── 177_nth_highest_salary.md
│   │    ├── 534_game_play_analysis_iii.md
│   │    └── ... (medium questions)
│   ├── Hard/
│   │    ├── 1179_reformat_department_table.md
│   │    └── 1212_team_scores_in_football_tournament.md
├── Solutions/
│   ├── Easy/
│   │    ├── 175_combine_two_tables.md
│   │    ├── 176_second_highest_salary.md
│   │    └── ... (easy questions)
│   ├── Medium/
│   │    ├── 177_nth_highest_salary.md
│   │    ├── 534_game_play_analysis_iii.md
│   │    └── ... (medium questions)
│   ├── Hard/
         ├── 1179_reformat_department_table.md
         └── 1212_team_scores_in_football_tournament.md



##  Topics Covered

- Basic SQL queries
- Aggregations and Group By
- Joins
- Window functions (RANK, DENSE_RANK)
- CTEs (Common Table Expressions)
- Subqueries
- Data Transformation queries
- Advanced SQL Patterns

---

##  How to Use

1. Clone or download the repository.
2. Open Microsoft SQL Server Management Studio (SSMS).
3. Create a new database (e.g., `Leetcode`).
4. Load the full dataset :
  ```sql
   USE Leetcode;
   :r datasets/leetcode_sql_practice_dataset.sql


