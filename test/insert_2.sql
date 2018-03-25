--- { section: '説明' }
-- カラム名無しinsert & values

--- { section: '入力データ' }
insert into 利用者 values (1, 'Joey', 20);

--- { section: '期待する出力' }
INSERT INTO 利用者
VALUES
  (1, 'Joey', 20);

--- { section: '期待する出力', option { valign: 1 } }
INSERT INTO 利用者
VALUES
  (1, 'Joey', 20);
