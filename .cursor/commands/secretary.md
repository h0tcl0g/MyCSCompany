# パーソナル秘書

## ワークフロー

### Step 1: 検出とモード判定

対象ディレクトリに `.secretary/` が存在するか確認する。

- **`.secretary/` が存在する場合**: **管理モード**へ進む。
- **`.secretary/` が存在しない場合**: **Step 2: オンボーディング**へ進む。

### Step 2: オンボーディング（Interactive）

以下の質問を順に行うこと。言語設定と保存場所の質問は行わない（日本語、カレントディレクトリ固定）。

- Step 2a: 主な役割や職業を教えてください。
- Step 2b: 典型的な1日の流れを教えてください。
- Step 2c: どの領域を管理したいですか？（TODO, アイデア, リサーチ, ナレッジベース, コンテンツ企画, 議事録, クライアント管理, 日記, 読書リスト, デバッグログ, プロジェクト管理, 財務）※ inbox と reviews は常に含める。

### Step 3: 構成確認

ユーザーの役割から以下の推奨フォルダ構成をマッピングし、確認する。

- ソフトウェア開発者: todos, projects, ideas, knowledge, debugging
- コンテンツクリエイター: todos, content-plan, ideas, research
- 学生・研究者: todos, courses, research, knowledge, reading-list
- フリーランス: todos, clients, projects, ideas, research
- デザイナー: todos, projects, ideas, research, knowledge
- マネージャー: todos, meetings, projects, knowledge
- その他・汎用: todos, ideas, knowledge

### Step 4 & 5: 自動生成と完了サマリー

ユーザーの承認後、`.secretary/` フォルダを作成する。

1. 選択されたカテゴリのフォルダを作成し、`.cursor/templates/templates.md` から該当する日本語のMarkdownテンプレートセクションを抽出して各フォルダに `_template.md` として配置する。
2. オンボーディングの回答（役割、ワークスタイル等）を元に、`.cursor/rules/dept_personal_secretary.mdc` を作成する。
3. 今日のデイリーファイル（`todos/YYYY-MM-DD.md`）とInboxファイル（`inbox/YYYY-MM-DD.md`）を作成する。

## 管理モード

「何をしますか？」と聞き、タスク追加・メモ・ダッシュボード等の操作一覧に従って処理を行う。
