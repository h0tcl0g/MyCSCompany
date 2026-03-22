# MyCSCompany - Cursor Native AI Company

このプロジェクトは、CursorのAgent機能を活用して構築された「AI社員が働く仮想カンパニー」のテンプレートです。
（Original idea by cc-company & cc-secretary）

## 概要

Claude Codeのプラグインとして動作していたAI秘書・組織管理システムを、Cursorのネイティブ機能（`.mdc` ルールと `.md` コマンド）のみで動作するように再構築しています。API課金を抑えつつ、自律的なタスク管理とコンテキスト蓄積を実現します。

## 運用方法（プロジェクト立ち上げ）

新しい仕事やプロジェクトを始める際は、このリポジトリをテンプレートとして複製（フォーク）して使用します。

1. このテンプレートをコピーして新しいフォルダを作成し、Cursorで開く
2. Cursor Composer (Agentモード) で以下を実行
   - 会社設立: `@company.md 組織のセットアップを開始して`
   - 秘書雇用: `@secretary.md 秘書のセットアップを開始して`
