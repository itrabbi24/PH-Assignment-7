# PostgreSQL Assignment 7 – Bookstore Management

This project contains the full SQL solution to the Batch-4 Assignment-7 from Apollo Level-2 Web Development course.  
It focuses on creating and managing a small bookstore database using **PostgreSQL**, covering:

- Table creation with proper constraints
- Sample data insertion
- Basic and advanced SQL queries
- Joins, aggregations, filtering, and data manipulation`

## Files Included

- `PostgreSQL_Assignment.sql`: Main SQL file containing:
  - Table schemas
  - Sample data
  - SQL queries with comments
  
  ---

  ## Setup Instructions

1. Install PostgreSQL
2. Open pgAdmin or your terminal and:
   - Create a database named `bookstore_db`
   - Run the SQL file: `PostgreSQL_Assignment.sql`
3. Review all queries and test output
4. (Optional) Modify sample data or write additional queries

---

## 📋 Bonus Section: প্রশ্ন ও উত্তর (Bangla)

### 1️. PostgreSQL কী?
PostgreSQL হলো একটি ওপেন সোর্স রিলেশনাল ডাটাবেস ম্যানেজমেন্ট সিস্টেম যা ACID কমপ্লায়েন্ট এবং এক্সটেনসিবল। এটি ডেটা সংরক্ষণ ও বিশ্লেষণের জন্য ব্যবহৃত হয়।

### 2️. PostgreSQL-এ Schema এর কাজ কী?
Schema হলো ডাটাবেসের মধ্যে একটি লজিকাল গ্রুপ, যেখানে টেবিল, ভিউ, ফাংশন ইত্যাদি থাকে। এটি ডাটাবেসকে সংগঠিত ও মডিউলার রাখে।

### 3️. Primary Key ও Foreign Key এর ব্যাখ্যা দিন।
- **Primary Key**: একটি ইউনিক কলাম যা প্রতিটি রেকর্ডকে চিহ্নিত করে।
- **Foreign Key**: অন্য একটি টেবিলের Primary Key এর সাথে সম্পর্ক স্থাপন করে।

### 4️. VARCHAR আর CHAR এর মধ্যে পার্থক্য কী?
- **CHAR(n)**: নির্দিষ্ট দৈর্ঘ্যের স্ট্রিং, ছোট হলে ফাঁকা স্থান দিয়ে পূরণ করে।
- **VARCHAR(n)**: পরিবর্তনশীল দৈর্ঘ্যের স্ট্রিং, যতটুকু প্রয়োজন ততটুকু জায়গা নেয়।

### 5️. SELECT স্টেটমেন্টে WHERE ক্লজ কেন ব্যবহৃত হয়?
WHERE ক্লজ দিয়ে নির্দিষ্ট শর্তে ডেটা ফিল্টার করা যায়। যেমন: WHERE age > 18;

### 6️. LIMIT এবং OFFSET কী কাজে লাগে?
- **LIMIT**: কতটি রেকর্ড ফিরিয়ে দিতে হবে তা নির্ধারণ করে।
- **OFFSET**: কতটি রেকর্ড স্কিপ করে শুরু করবে, সেটি নির্ধারণ করে।

### 7️. UPDATE দিয়ে ডেটা কীভাবে পরিবর্তন করা যায়?
UPDATE কমান্ড দিয়ে টেবিলের বিদ্যমান ডেটা পরিবর্তন করা যায়।
```sql
UPDATE books SET price = 45 WHERE id = 1;
```

### 8️. JOIN অপারেশন কেন দরকার এবং এটি কীভাবে কাজ করে?
JOIN দিয়ে একাধিক টেবিল থেকে সম্পর্কিত ডেটা একত্রে পাওয়া যায়। উদাহরণ:
```sql
SELECT * FROM orders JOIN customers ON orders.customer_id = customers.id;
```

### 9️. GROUP BY ক্লজ কী এবং এটি কিসের জন্য ব্যবহৃত হয়?
GROUP BY দিয়ে সেম টাইপের ডেটা গ্রুপ করে অ্যাগ্রিগেট ফাংশন চালানো যায়, যেমন প্রতি লেখকের মোট বিক্রি।

### 10. PostgreSQL-এ COUNT(), SUM(), এবং AVG() কিভাবে কাজ করে?
এই ফাংশনগুলো ডেটা এনালাইসিসের জন্য ব্যবহৃত হয়:
- `COUNT()` – রেকর্ড সংখ্যা গুনে
- `SUM()` – সংখ্যার যোগফল বের করে
- `AVG()` – গড় নির্ণয় করে

---


## Done By

**ARG RABBI**  
