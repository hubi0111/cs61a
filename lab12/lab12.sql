.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet from students where color = 'blue' and pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song from students where color = 'blue' and pet = 'dog';


CREATE TABLE smallest_int AS
  SELECT time, smallest from students where smallest > 2 order by smallest limit 20;


CREATE TABLE matchmaker AS
  SELECT s1.pet, s1.song, s1.color, s2.color
          from students as s1, students as s2
          where s1.time < s2.time and s1.pet = s2.pet and s1.song = s2.song;


CREATE TABLE sevens AS
  SELECT students.seven
          from students, numbers
          where students.time=numbers.time and students.number = 7 and numbers.'7' = 'True';

