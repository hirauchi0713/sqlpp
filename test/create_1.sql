--- { section: '入力データ' }
create table 利用者(id serial primary key, 氏名 text not null, 年齢 integer, パスワードハッシュ text);

--- { section: '期待する出力' }
CREATE TABLE 利用者 (
  id SERIAL PRIMARY KEY,
  氏名 TEXT,
  年齢 INTEGER,
  パスワードハッシュ TEXT
);

--- { section: '期待する出力', option { valign: 1 } }
CREATE TABLE 利用者 (
  id                 SERIAL PRIMARY KEY,
  氏名               TEXT,
  年齢               INTEGER,
  パスワードハッシュ TEXT
);
