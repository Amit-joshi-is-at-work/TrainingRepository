-- Optional: Clears existing rows if you are restarting the container fresh
TRUNCATE TABLE patient RESTART IDENTITY CASCADE;

INSERT INTO patient (name, age, subject) VALUES ('John Doe', 34, 'Flu');
INSERT INTO patient (name, age, subject) VALUES ('Jane Smith', 28, 'Migraine');
INSERT INTO patient (name, age, subject) VALUES ('Bob Johnson', 45, 'Back Pain');
INSERT INTO patient (name, age, subject) VALUES ('Alice Brown', 19, 'Allergies');