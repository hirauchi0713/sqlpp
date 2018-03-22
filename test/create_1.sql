--- { type: 'input' }
create table 利用者(id serial primary key, 氏名 text not null, 年齢 integer);

--- { type: 'expect' }
CREATE TABLE 利用者 (
  id SERIAL PRIMARY KEY,
  氏名 TEXT,
  年齢 INTEGER
);

--- { type: 'expect', valign: 1 }
CREATE TABLE 利用者 (
  id   SERIAL PRIMARY KEY,
  氏名 TEXT,
  年齢 INTEGER
);
