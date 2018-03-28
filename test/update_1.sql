--- { section: '入力データ' }
update 利用者 set 氏名='DEEDEE', 年齢=21, パスワードハッシュ='1234' where id=1;

--- { section: '期待する出力' }
UPDATE 利用者
SET
  氏名='DEEDEE',
  年齢=21
  パスワードハッシュ='1234'
WHERE
  id=1;

--- { section: '期待する出力', option { valign: 1 } }
UPDATE 利用者
SET
  氏名              ='DEEDEE',
  年齢              =21
  パスワードハッシュ='1234'
WHERE
  id=1;
