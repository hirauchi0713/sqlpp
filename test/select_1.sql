-- { type: 'input' }
select 氏名, 年齢 from 利用者 where id=1;

-- { type: 'expect' }
SELECT
  氏名,
  年齢
FROM
  利用者
WHERE
  id = 1;
