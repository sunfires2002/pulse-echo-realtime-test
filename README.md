# PULSE ECHO Realtime実機テスト

元コード: sunfires2002/pulse-echo-pilot の b617fff589f68f2790aa4c28999df47d8eac96fc。
Realtime・音声入力・ECHO・ヒートマップ・動画再生の処理はそのまま。
変更はテスト表示と cloudMatches() を同梱試合データに固定する処理のみ。
Supabase接続は元コードの公開publishableキー。秘密鍵は含まない。

## アクセス

match.html?id=realtime-test-20261011-a
match.html?id=realtime-test-20261011-b

同じ動画を前半・後半に割り当て、動画区分の分離も検証できる。
各端末の名前は M1 / M4 / Android とする。
投稿・相互受信・二重表示・タイムライン・ヒートマップ・再読み込みを確認する。
Androidの音声入力ボタン非表示は元コードの動作であり変更しない。

## 後日の削除対象（今回は削除しない）

テーブル: public.futsal_goods
video_id の完全一致で次の4値だけが削除対象となる。
- realtime-test-20261011-a:前半
- realtime-test-20261011-a:後半
- realtime-test-20261011-b:前半
- realtime-test-20261011-b:後半

cleanup-preview.sql は対象レコードの確認専用（SELECTのみ）。
削除操作は別途承認後に実行する。本番試合IDを条件に含めない。
URLは認証ではないためテスト名とテストコメントのみ使用する。
