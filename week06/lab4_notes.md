# SEN307 – Week 6 Lab 4 Notes

## 1. INSERT Operation
The INSERT statement was used to add records into the database tables.

The following records were inserted:
- 5 Departments
- 10 Courses
- 10 Lecturers
- 20 Students
- 40 Enrolments
- 10 Course Allocations

## 2. UPDATE Operation
The UPDATE statement was used to modify an existing student's department.

```sql
UPDATE Student
SET dept_id = 53
WHERE student_id = 1;
```

## 3. DELETE Operation
A DELETE statement was used to test referential integrity.

```sql
DELETE FROM Course
WHERE course_code = 'SEN307';
```

MySQL rejected the deletion because the course is referenced by records in the Enrolment and CourseAllocation tables.

This demonstrated the use of foreign key constraints to maintain referential integrity.

## 4. Verification
The final record counts were:

| Table | Records |
|---|---:|
| Department | 5 |
| Course | 10 |
| Lecturer | 10 |
| Student | 20 |
| Enrolment | 40 |
| CourseAllocation | 10 |

All required records were successfully inserted and verified.