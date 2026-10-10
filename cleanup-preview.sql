-- 確認専用。削除は実行しない。
select id, video_id, good_time, user_name, comment
from public.futsal_goods
where video_id in (
  'realtime-test-20261011-a:前半',
  'realtime-test-20261011-a:後半',
  'realtime-test-20261011-b:前半',
  'realtime-test-20261011-b:後半'
);
