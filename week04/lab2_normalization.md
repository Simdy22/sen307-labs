DATABASE NORMALIZATION REPORT

1. INTRODUCTION

Normalization is the process of organizing data in a database to reduce duplication, prevent data anomalies, and improve data consistency.

This report describes the normalization principles applied to the Student Course Registration System.

2. UNNORMALIZED FORM (UNF)

In an unnormalized database, student, department, course, and lecturer information could be stored together in one large table. A student taking multiple courses might have several course and lecturer details stored in repeating groups.

This structure can lead to duplicated data and difficulties when inserting, updating, or deleting records.

3. FIRST NORMAL FORM (1NF)

A table is in First Normal Form when every field contains a single value and there are no repeating groups.

The database is organized into separate tables with individual fields. Each table has a primary key that uniquely identifies its records.

4. SECOND NORMAL FORM(2NF)

A table is in Second Normal Form when it is in 1NF and every non-key attribute depends on the whole of each candidate key, not just part of a composite key.

Student, Course, and Lecturer information is stored separately. The Enrolment table connects students with courses, while Course_Lecturer connects courses with lecturers.

This arrangement helps reduce unnecessary duplication in relationship records.

5. THIRD NORMAL FORM (3NF)

A table is in Third Normal Form when it is in 2NF and non-key attributes do not depend transitively on a candidate key.

Department information is stored in the Department table. Student and Lecturer records reference the department through dept_id instead of repeatedly storing department details.

Course details are stored in Course, while enrolment and course-lecturer assignments are stored in their respective tables.

6. FINAL DATABASE SCHEMA

The database contains the following tables:

1. **Department:** dept_id (PK), dept_name
2. **Student:** student_id (PK), matric_no, full_name, dept_id (FK)
3. **Lecturer:** lecturer_id (PK), lecturer_name, dept_id (FK)
4. **Course:** course_id (PK), course_code, course_title
5. **Enrolment:** enrolment_id (PK), student_id (FK), course_id (FK), session
6. **Course_Lecturer:** course_lecturer_id (PK), course_id (FK), lecturer_id (FK), session

PK means Primary Key, and FK means Foreign Key.

7. CONCLUSION

The database separates student, department, lecturer, course, enrolment, and course-lecturer information into related tables. Primary and foreign keys help maintain data integrity, while the separate tables reduce unnecessary duplication and support a structured Student Course Registration System.