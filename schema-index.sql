PRAGMA foreign_keys = OFF;
CREATE TABLE sections(
  "uuid" TEXT,
  "course_offering_uuid" TEXT,
  "section_type" TEXT,
  "number" INTEGER,
  "room_uuid" TEXT,
  "schedule_uuid" TEXT
);
CREATE TABLE instructors(
  "id" TEXT,
  "name" TEXT
);
CREATE TABLE course_offerings(
  "uuid" TEXT,
  "course_uuid" TEXT,
  "term_code" INTEGER,
  "name" TEXT
);
CREATE TABLE subject_memberships(
  "subject_code" TEXT,
  "course_offering_uuid" TEXT
);
CREATE TABLE courses(
  "uuid" TEXT,
  "name" TEXT,
  "number" INTEGER
);
CREATE TABLE rooms(
  "uuid" TEXT,
  "facility_code" TEXT,
  "room_code" TEXT
);
CREATE TABLE teachings(
  "instructor_id" TEXT,
  "section_uuid" TEXT
);
CREATE TABLE subjects(
  "code" TEXT,
  "name" TEXT,
  "abbreviation" TEXT
);
CREATE TABLE schedules(
  "uuid" TEXT,
  "start_time" INTEGER,
  "end_time" INTEGER,
  "mon" INTEGER,
  "tues" INTEGER,
  "wed" INTEGER,
  "thurs" INTEGER,
  "fri" INTEGER,
  "sat" INTEGER,
  "sun" INTEGER
);
CREATE TABLE grade_distributions(
  "course_offering_uuid" TEXT,
  "section_number" INTEGER,
  "n_count" INTEGER,
  "c_count" INTEGER,
  "f_count" INTEGER,
  "cr_count" INTEGER,
  "p_count" INTEGER,
  "nw_count" INTEGER,
  "other_count" INTEGER,
  "bc_count" INTEGER,
  "u_count" INTEGER,
  "d_count" INTEGER,
  "ab_count" INTEGER,
  "a_count" INTEGER,
  "s_count" INTEGER,
  "i_count" INTEGER,
  "b_count" INTEGER,
  "nr_count" INTEGER
);
-- Q1
CREATE INDEX sections_idx_76da628e ON sections(section_type);
-- Q2
CREATE INDEX grade_distributions_idx_aee7ed68 ON grade_distributions(course_offering_uuid, f_count);
CREATE INDEX course_offerings_idx_00015c29 ON course_offerings(name);
-- Q3
CREATE INDEX instructors_idx_2146441a ON instructors(id, name);
CREATE INDEX teachings_idx_3563b670 ON teachings(section_uuid, instructor_id);
-- CREATE INDEX sections_idx_76da628e ON sections(section_type);
-- Q4
CREATE INDEX course_offerings_idx_00017647 ON course_offerings(uuid);
CREATE INDEX subject_memberships_idx_41dc1892 ON subject_memberships(subject_code);
-- Q5
CREATE INDEX instructors_idx_00000415 ON instructors(id);
-- CREATE INDEX teachings_idx_3563b670 ON teachings(section_uuid, instructor_id);
CREATE INDEX sections_idx_bb504626 ON sections(room_uuid, uuid);
CREATE INDEX rooms_idx_4815fb8f ON rooms(room_code);
/* No STAT tables available */