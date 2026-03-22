#!/bin/bash
ROOT_DIR=$(git rev-parse --show-toplevel)
MOD_DIR=$(cd $(dirname $0); pwd)
echo "Installing MyCSCompany skills and rules..."
# Skillsのリンク作成
mkdir -p "$ROOT_DIR/.claude/skills"
ln -sfn "$MOD_DIR/.claude/skills/company" "$ROOT_DIR/.claude/skills/company"
ln -sfn "$MOD_DIR/.claude/skills/secretary" "$ROOT_DIR/.claude/skills/secretary"
# MDCルールのリンク作成
mkdir -p "$ROOT_DIR/.cursor/rules"
ln -sfn "$MOD_DIR/.cursor/rules/company_ops.mdc" "$ROOT_DIR/.cursor/rules/company_ops.mdc"
ln -sfn "$MOD_DIR/.cursor/rules/secretary_ops.mdc" "$ROOT_DIR/.cursor/rules/secretary_ops.mdc"
echo "Done! Please restart Cursor or Claude Code."
