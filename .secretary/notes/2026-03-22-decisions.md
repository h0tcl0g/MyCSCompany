# 2026-03-22 意思決定

## 2026-03-22T21:14:54 — Cursor アーキテクチャ整理（指示どおり実施）

- `company_init.mdc` / `secretary_init.mdc` を削除。
- `.cursor/templates/` に `daily.md`・`inbox.md`・`dept_rule.mdc` を追加。
- `/company`・`/secretary` コマンドをテンプレート参照フローに更新し、コマンド定義から `CLAUDE.md` 記述を除去。
- `company_ops.mdc` から部署 `CLAUDE.md` 読み込み指示を削除。`secretary_ops.mdc` の前提から `.secretary/CLAUDE.md` 読み込み一文を削除。

## 2026-03-22T21:24:35 — コマンド定義の追記・Step 3 差し替え

- `company.md` の Step 3 末尾に `company_profile.mdc` 生成手順（項目4）を追記。
- `secretary.md` の Step 3 を役割別推奨フォルダ一覧に完全置換。

## 2026-03-22T21:25:12 — 部署用ルール雛形4件の追加

- `.cursor/templates/` に `rule_pm.mdc`・`rule_research.mdc`・`rule_marketing.mdc`・`rule_engineering.mdc` を新規作成（依頼テキストどおり）。

## 2026-03-22T21:30:48 — 部署ルール5種・秘書カテゴリテンプレ11種の追加

- `.cursor/templates/` に `rule_finance.mdc`・`rule_sales.mdc`・`rule_creative.mdc`・`rule_hr.mdc`・`rule_generic.mdc` を追加。
- 同フォルダに `ideas.md`・`research.md`・`knowledge.md`・`reviews.md`・`meetings.md`・`clients.md`・`content_plan.md`・`reading_list.md`・`journal.md`・`debugging.md`・`generic.md` を追加（提示文面どおり）。
