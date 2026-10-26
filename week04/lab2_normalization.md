Database Normalization Report

Student Course Registration System

1. Introduction

Database normalization is the process of organizing data into related tables to reduce unnecessary duplication and prevent insertion, update, and deletion anomalies.

This report explains how the Student Course Registration System is organized using Unnormalized Form (UNF), First Normal Form (1NF), Second Normal Form (2NF), and Third Normal Form (3NF).

2. Unnormalized Form (UNF)

Initially, student, department, course, and lecturer details could be stored in one large table.

| Student ID | Student Name | Department | Courses | Lecturers |
|---|---|---|---|---|
| 101 | Ada Okafor | Software Engineering | CSC301, CSC302 | Mr James, Mrs Bello |

This structure contains multiple course and lecturer values in single fields. It can cause data duplication and make individual course registrations difficult to manage.

3. First Normal Form (1NF)

A table is in First Normal Form when each field contains a single value and there are no repeating groups.

The example can be changed into individual registration rows:

| Student ID | Student Name | Department | Course Code | Lecturer Name |
|---|---|---|---|---|
| 101 | Ada Okafor | Software Engineering | CSC301 | Mr James |
| 101 | Ada Okafor | Software Engineering | CSC302 | Mrs Bello |

Each row now contains one course registration. However, student and department information is repeated, so further normalization is needed.

4. Second Normal Form (2NF)

A table is in Second Normal Form when it is in 1NF and every non-key attribute depends on the whole of every candidate key, rather than only part of a composite key.

To reduce duplication, student details, course details, and registrations are stored separately:

- **Student:** Stores student details, including student_id, matric_no, full_name, and dept_id.
- **Course:** Stores course details, including course_id, course_code, and course_title.
- **Enrolment:** Connects students to courses using student_id and course_id, and records the academic session.

For example, a student's name is stored once in Student instead of being repeated for every course registration.

5. Third Normal Form (3NF)

A table is in Third Normal Form when it is in 2NF and non-key attributes do not depend transitively on a candidate key.

The database separates department and lecturer information:

- **Department:** Stores dept_id and dept_name.
- **Student:** References Department through dept_id.
- **Lecturer:** Stores lecturer_id, lecturer_name, and dept_id.
- **Course_Lecturer:** Connects courses to lecturers and records the academic session.

For example, the department name is stored in Department rather than repeated in every Student record. The foreign key dept_id identifies the department associated with a student or lecturer.

6. Final Database Schema

The final database contains six tables:

1. **Department:** dept_id (PK), dept_name
2. **Student:** student_id (PK), matric_no, full_name, dept_id (FK)
3. **Lecturer:** lecturer_id (PK), lecturer_name, dept_id (FK)
4. **Course:** course_id (PK), course_code, course_title
5. **Enrolment:** enrolment_id (PK), student_id (FK), course_id (FK), session
6. **Course_Lecturer:** course_lecturer_id (PK), course_id (FK), lecturer_id (FK), session

**PK** means Primary Key, which uniquely identifies each record. **FK** means Foreign Key, which references a key in another table and helps maintain referential integrity.

7. Conclusion

The Student Course Registration System separates student, department, lecturer, course, enrolment, and course-lecturer information into related tables. This design reduces unnecessary duplication and helps prevent data anomalies. Primary keys and foreign keys establish relationships between the tables and support data integrity.