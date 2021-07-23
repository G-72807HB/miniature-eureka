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
/* No STAT tables available */