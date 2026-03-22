# MyCSCompany - Cursor Hybrid AI Company

このプロジェクトは、CursorのAgent機能を活用した「AI社員が働く仮想カンパニー」のテンプレートです。
（Original idea by [cc-company](https://github.com/Shin-sibainu/cc-company) & [cc-secretary](https://github.com/Shin-sibainu/cc-secretary)）

## 導入方法

用途に応じて、次のどちらかを選んでください。

### テンプレートとして使う場合（フォークして新会社設立）

このリポジトリを **そのまま自分の会社用リポジトリの土台** にする手順です。

1. GitHub でこのリポジトリを **Fork** する（または「Use this template」でテンプレートから作成する）。
2. フォークしたリポジトリをクローンし、Cursor で開く。
3. `.claude/skills/` と `.cursor/rules/` はリポジトリに同梱されているため、**追加のインストール作業は不要**です。`/company`・`/secretary` や MDC ルールがそのまま使えます。
4. 会社名・ドキュメント・`.company` / `.secretary` などを自分用に編集していきます。

### パッケージとして使う場合（既存プロジェクトへの導入）

**別の既存リポジトリ** に MyCSCompany を取り込み、親プロジェクトのルートに Skills と Cursor ルールだけを載せたいときの手順です。**Git サブモジュール** とルートの **`install.sh`** を組み合わせます。

1. 親リポジトリのルートでサブモジュールを追加します（配置パスは任意。例では `vendor/MyCSCompany`）。

   ```bash
   git submodule add https://github.com/h0tcl0g/MyCSCompany.git vendor/MyCSCompany
   git commit -m "Add MyCSCompany as submodule"
   ```

2. 親リポジトリのルートにいる状態で、インストーラーを実行します。

   ```bash
   sh vendor/MyCSCompany/install.sh
   ```

   これにより、親の `.claude/skills/` と `.cursor/rules/` に、サブモジュール内の `company` / `secretary` スキルおよび `company_ops.mdc` / `secretary_ops.mdc` への **シンボリックリンク** が作成されます。

3. メッセージに従い **Cursor または Claude Code を再起動** してください。

特定のタグ（リリース）に固定したい場合は、サブモジュール追加直後にサブモジュール内でチェックアウトしてから親でコミットします。

```bash
cd vendor/MyCSCompany
git checkout v1.0.0
cd -
git add vendor/MyCSCompany
git commit -m "Pin MyCSCompany submodule to v1.0.0"
```

#### サブモジュール付きリポジトリのクローン

サブモジュールの中身まで一度に取得するには `--recurse-submodules` を付けます。

```bash
git clone --recurse-submodules <親リポジトリのURL>
```

すでに通常クローン済みの場合は、親のルートで次を実行します。

```bash
git submodule update --init --recursive
```

クローン後、**親のルートで `sh vendor/MyCSCompany/install.sh` を再実行**すると、他環境でもリンクを復元できます（リンクは通常 Git 管理しないため）。

#### サブモジュールを最新に更新する

親のルートから、追跡ブランチに追従している場合の例です。

```bash
git submodule update --remote --merge
```

タグ固定運用のときは、サブモジュールのディレクトリに入り、目的のタグやコミットに `git checkout` してから親で `git add` とコミットしてください。

#### 親リポジトリ側で意識すること

- サブモジュールは **親のコミットが指すコミット（またはタグ）** が記録されるため、チームでは「どの版に揃えるか」を README やドキュメントで共有すると安全です。
- `install.sh` が作るシンボリックリンクは、チーム全員が同じ手順で実行するか、運用方針をドキュメント化しておくとよいです。

## 使い方

Composer (Agentモード) で以下のコマンドを入力してください。

- `/company`: 会社組織のセットアップと運営
- `/secretary`: パーソナル秘書のセットアップと管理

## 特徴

- **Skillベース**: `.claude/skills/` により `/` コマンドが機能します。
- **MDCベース**: `.cursor/rules/` により、AI秘書の振る舞いや自動記録ルールが常時適用されます。
