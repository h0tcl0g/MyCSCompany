# 2026-03-22 意思決定

## 2026-03-22T21:14:54 — Cursor アーキテクチャ整理（指示どおり実施）

- `company_init.mdc` / `secretary_init.mdc` を削除。
- `.cursor/templates/` に `daily.md`・`inbox.md`・`dept_rule.mdc` を追加。
- `/company`・`/secretary` コマンドをテンプレート参照フローに更新し、コマンド定義から `CLAUDE.md` 記述を除去。
- `company_ops.mdc` から部署 `CLAUDE.md` 読み込み指示を削除。`secretary_ops.mdc` の前提から `.secretary/CLAUDE.md` 読み込み一文を削除。
