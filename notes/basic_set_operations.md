# Basic set operations used in databases

---

## 1️⃣ Union ((A \cup B))

- **Meaning:** All elements that are in (A) **or** in (B) (no duplicates).
- **Example:**
  [
  A = {1,2,3}, B = {3,4,5} \implies A \cup B = {1,2,3,4,5}
  ]
- **SQL:** `UNION`

```sql
SELECT * FROM A
UNION
SELECT * FROM B;
```

---

## 2️⃣ Intersection ((A \cap B))

- **Meaning:** All elements that are in **both** (A) and (B).
- **Example:**
  [
  A = {1,2,3}, B = {3,4,5} \implies A \cap B = {3}
  ]
- **SQL:** `INTERSECT`

```sql
SELECT * FROM A
INTERSECT
SELECT * FROM B;
```

---

## 3️⃣ Difference / Minus ((A - B))

- **Meaning:** Elements in (A) **but not** in (B).
- **Example:**
  [
  A = {1,2,3}, B = {2,3,4} \implies A - B = {1}
  ]
- **SQL:** `EXCEPT` (PostgreSQL / SQL Server) or `MINUS` (Oracle)

```sql
SELECT * FROM A
EXCEPT
SELECT * FROM B;
```

---

## 4️⃣ Symmetric Difference ((A \triangle B))

- **Meaning:** Elements in **A or B but not in both**.
- **Example:**
  [
  A = {1,2,3}, B = {3,4,5} \implies A \triangle B = {1,2,4,5}
  ]
- **SQL:** No direct keyword, combine `UNION` and `EXCEPT`:

```sql
(SELECT * FROM A
EXCEPT
SELECT * FROM B)
UNION
(SELECT * FROM B
EXCEPT
SELECT * FROM A);
```

---

## 5️⃣ Cartesian Product ((A \times B))

- **Meaning:** All possible pairs ((a, b)) where (a \in A) and (b \in B).
- **Example:**
  [
  A = {1,2}, B = {x,y} \implies A \times B = {(1,x),(1,y),(2,x),(2,y)}
  ]
- **SQL:** Use **CROSS JOIN**

```sql
SELECT * FROM A
CROSS JOIN B;
```

---

### ✅ Summary Table

| Operation            | Notation        | Meaning                | SQL                               |
| -------------------- | --------------- | ---------------------- | --------------------------------- |
| Union                | (A \cup B)      | In A or B              | `UNION`                           |
| Intersection         | (A \cap B)      | In both A and B        | `INTERSECT`                       |
| Difference           | (A - B)         | In A, not in B         | `EXCEPT` / `MINUS`                |
| Symmetric Difference | (A \triangle B) | In A or B but not both | `(A EXCEPT B) UNION (B EXCEPT A)` |
| Cartesian Product    | (A \times B)    | All pairs (a,b)        | `CROSS JOIN`                      |

---
