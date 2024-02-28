use guvi_zen_class;
CREATE TABLE learners (
    learner_id INT PRIMARY KEY,
    learner_name VARCHAR(50),
    mentor_id INT,
    batch_id INT
);
CREATE INDEX idx_mentor_id ON learners (mentor_id);

CREATE TABLE mentors (
    mentor_name VARCHAR(50),
    mentor_id INT,
    FOREIGN KEY (mentor_id) REFERENCES learners(mentor_id)
);
CREATE INDEX idx_batch_id ON learners (batch_id);
create table batch(batch_name varchar(50), batch_id int, Foreign key (batch_id) references learners(batch_id));
create table courses(course_id int primary key, course_name varchar(50));
create table tasks (task_id int primary key, task_name varchar(50), course_id int, foreign key (course_id) references courses(course_id));
create table mark (mark int, mark_id int primary key, learner_id int, foreign key (learner_id) references learners(learner_id));

describe learners;