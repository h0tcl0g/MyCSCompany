# 2025-03-22 意思決定

## 2025-03-22（移行作業）

- Cursor 向け構成（`.cursorrules` / `.cursor/rules` / `.cursor/templates` / `.cursor/commands`）を、Claude Code 互換の `.claude/` ベースに移行した。
- プロジェクトルートの運営ルールは `CLAUDE.md` にリネーム。モジュールルールは `.claude/rules/`、テンプレートは `.claude/templates/` に配置。
- コマンド相当の手順は `.claude/skills/company/SKILL.md` と `.claude/skills/secretary/SKILL.md` に移し、YAML フロントマターを付与。スキル内のテンプレート・ルールパスは `.claude/` に統一。
- 手順書の対象外として `.claude/rules/secretary_ops.mdc` 内の `.cursor/` 表記は未変更（実体パスと不一致の可能性あり。必要時に手動で `.claude/` に合わせる）。
