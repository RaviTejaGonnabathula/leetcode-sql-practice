# ⚙️ How to Load the Dataset into the Database

1. Open **SQL Server Management Studio (SSMS)**.
2. Connect to your SQL Server instance.
3. Create a new database if not already created:
   ```sql
   CREATE DATABASE Leetcode;
   USE Leetcode;
4. Execute leetcode_sql_practice_dataset.sql
```

# 📋 List of Tables Created:

| No. | Table Name |
|:---|:------------|
| 1 | Person |
| 2 | Address |
| 3 | Employee |
| 4 | Scores |
| 5 | Logs |
| 6 | PersonEmails |
| 7 | Customers |
| 8 | Orders |
| 9 | Weather |
| 10 | Activity |
| 11 | Bonus |
| 12 | CustomerReferee |
| 13 | World |
| 14 | Courses |
| 15 | FriendRequest |
| 16 | RequestAccepted |
| 17 | Seat |
| 18 | SalesPerson |
| 19 | Company |
| 20 | OrdersSales |
| 21 | Tree |
| 22 | Triangle |
| 23 | Point2D |
| 24 | MyNumbers |
| 25 | Cinema |
| 26 | CustomerProduct |
| 27 | ProductList |
| 28 | ActorDirector |

✅ **Total Tables Created:** **28**

---
```

# 📢 Notes:
- Tables are **created only once** (no duplicates).
- `IF OBJECT_ID(...)` checks prevent errors if tables already exist.
- Insert sample data is provided immediately after each table creation.
- Sample `SELECT * FROM <table>` queries are available to validate inserts.

---

# 🎯 Quick Summary:

| Step | Action |
|:-----|:-------|
| Create Database | `CREATE DATABASE Leetcode;` |
| Use Database | `USE Leetcode;` |
| Run SQL Script | Execute `leetcode_sql_practice_dataset.sql` |
| Tables Created | 28 Tables |

---


