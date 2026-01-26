UPDATE students SET status = "full_time" WHERE name = "Sara Johnson";

UPDATE students SET semester = 5, status = "part_time" WHERE name = "Amelia Young";

ALTER TABLE Students
ADD province VARCHAR(10) DEFAULT 'QC';

UPDATE Students
SET province = 'QC';