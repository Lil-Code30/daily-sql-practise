-- Create a table
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT UNIQUE NOT NULL,
    name VARCHAR(150) NOT NULL,
    address VARCHAR(200),
    status ENUM("part_time", "full_time") NOT NULL,
    semester INT NOT NULL,
    major VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    created_at DATE DEFAULT (CURRENT_DATE()),  

    CONSTRAINT fk_StudentDepartment 
        FOREIGN KEY (department_id) REFERENCES Department(id)
);


CREATE TABLE Department (
    id INT AUTO_INCREMENT UNIQUE NOT NULL,
    name VARCHAR(50) NOT NULL
);