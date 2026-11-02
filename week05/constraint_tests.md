# Week 5 – Constraint Testing Results

The following tests were performed to verify that the database constraints were working correctly.

### 1. NOT NULL Constraint
Attempted to insert a NULL value into the Department table's `dept_name` column.

**Expected result:** Insert rejected because the column does not allow NULL values.

### 2. CHECK Constraint
Attempted to insert a Course with `credit_units = 9`.

**Actual result:** Error Code 3819 – Check constraint `chk_credit_units` is violated.

### 3. FOREIGN KEY Constraint
Attempted to insert a Student with `dept_id = 999`.

**Actual result:** Error Code 1452 – Foreign key constraint failed because the referenced department does not exist.

### 4. ENUM Constraint
Attempted to insert a Student with gender `'X'`.

**Actual result:** Error Code 1265 – Data truncated for column `gender`.

### 5. UNIQUE Constraint
Inserted a Department with the name `Test Department`, then attempted to insert another Department with the same name.

**Actual result:** Error Code 1062 – Duplicate entry `Test Department` for key `department.dept_name`.

**Conclusion:** The tests confirmed that the NOT NULL, CHECK, FOREIGN KEY, ENUM and UNIQUE constraints were enforced by the database.