# 2025-03-22 学び

## 2025-03-22 — Google Calendar MCP の起動条件

`npx -y @cocal/google-calendar-mcp` は **GCP の OAuth クライアント JSON**（`gcp-oauth.keys.json`）が無いと起動しない。npx のキャッシュ内パッケージ直下に置くのは非現実的なので、**`GOOGLE_OAUTH_CREDENTIALS` にファイルの絶対パスを指定**するのがよい。初回はブラウザ等で OAuth 完了後、トークンは `~/.config/google-calendar-mcp/tokens.json` に保存される。

## 2025-03-22 — Google Calendar MCP が求める credentials JSON の形

`Invalid credentials file format. Expected either "installed" object or direct client_id/client_secret` は、**ダウンロードした JSON が「デスクトップ用」ではない**ときに出やすい。GCP の OAuth クライアントは **種類「デスクトップ アプリ」** で作り直し、JSON を取り直すと `"installed": { ... }` 形式になり読める。既存が「ウェブアプリケーション」だけの場合、`web` 内の `client_id` / `client_secret` をルートに抜き出した最小 JSON にしても受け付ける場合がある（まずはデスクトップ用の再ダウンロードが安全）。

## 2025-03-22 — OAuth テスト中アプリで 403 access_denied

コンソート画面が **外部公開前（テスト）** のとき、「審査未完了」「テスターのみ」メッセージでブロックされる。**Google Cloud Console → API とサービス → OAuth 同意画面 → テストユーザー** に、ログインに使う Gmail（例: 本人の Google アカウント）を追加する。本番公開・検証はカレンダー等のスコープで手間が大きいので、個人利用はテストユーザー追加が現実的。

## 2025-03-22 — `npx @cocal/google-calendar-mcp` がターミナルで止まるように見える理由

`Valid tokens found...` のあと何も出ないのは **異常ではなく、MCP が標準入力で JSON-RPC を待っている状態**。手元のシェルから単体実行しても次のプロンプトは返らない。**Cursor の MCP 設定**で `command` / `args` / `env`（`GOOGLE_OAUTH_CREDENTIALS`）を指定し、エディタ側がプロセスを起動して通信させる。終了するときはターミナルでは `Ctrl+C`。
