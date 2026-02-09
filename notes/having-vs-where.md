# Having vs Where

`WHERE` and `HAVING` both _filter data_, but they operate at **different moments** in the query.

---

## Big picture (mental model)

Think of a SQL query like an assembly line 🏭:

1. **FROM** → get the raw data
2. **WHERE** → filter _rows_
3. **GROUP BY** → group rows
4. **HAVING** → filter _groups_
5. **SELECT** → show results

👉 **WHERE filters rows before grouping**
👉 **HAVING filters groups after grouping**

---

## 1️⃣ WHERE – filter individual rows

### Use `WHERE` when

- You filter **normal columns**
- You are **not using aggregate functions** (`COUNT`, `SUM`, `AVG`, etc.)

### Real-world example: Online store

**Goal:** Get all orders made in 2025

```sql
SELECT *
FROM orders
WHERE order_date >= '2025-01-01';
```

✔ Filters each order row
❌ No grouping
❌ No aggregates

---

### Another example: Employees

**Goal:** Get employees from the IT department

```sql
SELECT *
FROM employees
WHERE department = 'IT';
```

Simple row filtering.

---

## 2️⃣ HAVING – filter grouped data

### Use `HAVING` when:

- You use **GROUP BY**
- You filter using **aggregate results**

### Real-world example: E-commerce sales

**Goal:** Show only customers who made **more than 5 orders**

```sql
SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 5;
```

Why `HAVING`?

- `COUNT(*)` doesn’t exist **before** grouping
- `WHERE COUNT(*) > 5` ❌ (invalid)

---

### Another example: Stock management

**Goal:** Show products whose **total stock value** is greater than 10,000$

```sql
SELECT product_id, SUM(quantity * price) AS stock_value
FROM stock
GROUP BY product_id
HAVING SUM(quantity * price) > 10000;
```

Here you filter **groups of rows**, not individual rows.

---

## 3️⃣ WHERE + HAVING together (very common)

You can (and should) use **both** in the same query.

### Real-world example: Sales analysis

**Goal:**

- Only consider orders from **2025**
- Show customers who spent **more than 5,000$**

```sql
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
WHERE order_date >= '2025-01-01'
GROUP BY customer_id
HAVING SUM(total_amount) > 5000;
```

### Why this is good practice:

- `WHERE` reduces data early (better performance 🚀)
- `HAVING` handles aggregate logic

---

## 4️⃣ Common mistakes (exam + real life ⚠️)

### ❌ Using HAVING instead of WHERE

```sql
SELECT *
FROM employees
HAVING department = 'IT'; -- ❌ wrong
```

`HAVING` requires grouping.

---

### ❌ Using WHERE with aggregates

```sql
SELECT customer_id, COUNT(*)
FROM orders
WHERE COUNT(*) > 5  -- ❌ invalid
GROUP BY customer_id;
```

Aggregates must go in `HAVING`.

---

## 5️⃣ Quick comparison table

| Feature               | WHERE  | HAVING |
| --------------------- | ------ | ------ |
| Filters               | Rows   | Groups |
| Works before GROUP BY | ✅     | ❌     |
| Works after GROUP BY  | ❌     | ✅     |
| Can use aggregates    | ❌     | ✅     |
| Performance           | Faster | Slower |

---

## 6️⃣ One-liner to remember 💡

> **WHERE filters rows, HAVING filters results of GROUP BY**
