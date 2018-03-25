--- { section: '説明' }
-- カラム名付きinsert & values

--- { section: '入力データ' }
insert into 利用者(氏名, 年齢) values ('Joey', 20);

--- { section: '期待する出力' }
INSERT INTO 利用者
  (氏名, 年齢)
VALUES
  ('Joey', 20);

--- { section: '期待する出力', option { valign: 1 } }
INSERT INTO 利用者
  (氏名  , 年齢)
VALUES
  ('Joey', 20);
