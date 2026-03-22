# MyCSCompany - Cursor Hybrid AI Company

このプロジェクトは、CursorのAgent機能を活用した「AI社員が働く仮想カンパニー」のテンプレートです。
（Original idea by [cc-company](https://github.com/Shin-sibainu/cc-company) & [cc-secretary](https://github.com/Shin-sibainu/cc-secretary)）

## 使い方

Composer (Agentモード) で以下のコマンドを入力してください。

- `/company`: 会社組織のセットアップと運営
- `/secretary`: パーソナル秘書のセットアップと管理

## 特徴

- **Skillベース**: `.claude/skills/` により `/` コマンドが機能します。
- **MDCベース**: `.cursor/rules/` により、AI秘書の振る舞いや自動記録ルールが常時適用されます。

## Git サブモジュールとして使う

別リポジトリにこのテンプレートを取り込み、更新を追いかけたいときは **サブモジュール** が向いています。配置パスは任意です（例: `vendor/MyCSCompany` や `templates/MyCSCompany`）。自前の fork やミラーがある場合は、下記の URL をそのリモートに差し替えてください。

### 既存リポジトリに追加する

親リポジトリのルートで実行します。

```bash
git submodule add https://github.com/h0tcl0g/MyCSCompany.git <サブモジュールのパス>
git commit -m "Add MyCSCompany as submodule"
```

特定のタグ（リリース）に固定したい場合は、追加直後にサブモジュール内でチェックアウトして親でコミットします。

```bash
cd <サブモジュールのパス>
git checkout v1.0.0
cd -
git add <サブモジュールのパス>
git commit -m "Pin MyCSCompany submodule to v1.0.0"
```

### サブモジュール付きリポジトリをクローンする

サブモジュールの中身まで一度に取得するには `--recurse-submodules` を付けます。

```bash
git clone --recurse-submodules <親リポジトリのURL>
```

すでに通常クローン済みの場合は、親のルートで次を実行します。

```bash
git submodule update --init --recursive
```

### サブモジュールを最新に更新する

親のルートから、追跡ブランチに追従している場合の例です。

```bash
git submodule update --remote --merge
```

タグ固定運用のときは、サブモジュールのディレクトリに入り、目的のタグやコミットに `git checkout` してから親で `git add` とコミットしてください。

### 親リポジトリ側で意識すること

- サブモジュールは **親のコミットが指すコミット（またはタグ）** が記録されるため、チームでは「どの版に揃えるか」を README やドキュメントで共有すると安全です。
- Cursor で Skills / ルールを読ませる場合は、**ワークスペースにサブモジュールのパスが含まれる**（またはシンボリックリンク等で見える）ようにすると扱いやすいです。
