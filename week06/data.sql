USE sen307_2411214;

-- INSERT DEPARTMENTS
INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');

-- INSERT COURSES
INSERT INTO Course
(course_code, course_title, credit_units, description, dept_id)
VALUES
('SEN307', 'Database Systems', 3,
'Relational database design, SQL queries, normalization, transactions and indexing using MySQL.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('SEN301', 'Software Architecture', 3,
'Architectural styles, design patterns, microservices and how to structure large software systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('COS301', 'Operating Systems', 3,
'Processes, threads, CPU scheduling, memory management and file systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('COS305', 'Computer Networks', 3,
'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('AIN301', 'Introduction to Artificial Intelligence', 3,
'Intelligent agents, search algorithms, knowledge representation and reasoning.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN305', 'Machine Learning', 3,
'Supervised and unsupervised learning, neural networks, deep learning and model evaluation.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN307', 'Natural Language Processing', 3,
'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('DTS301', 'Data Visualization and Analytics', 2,
'Exploratory data analysis, charts, dashboards and telling stories with data.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('DTS305', 'Big Data Technologies', 3,
'Distributed storage and processing of very large datasets with Hadoop and Spark.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('CYB301', 'Network Security', 3,
'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));
