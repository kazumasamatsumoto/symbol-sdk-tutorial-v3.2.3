# setup.sh の macOS での動作について

## macOS 用に修正した setup.sh

```bash:setup.sh
#!/bin/bash

# プロジェクト名を引数から取得（デフォルトは my-symbol-project）
PROJECT_NAME=${1:-my-symbol-project}

# 新しいディレクトリを作成
mkdir -p $PROJECT_NAME

# デフォルトプロジェクトからファイルをコピー
cp defualt-project/.gitignore $PROJECT_NAME/
cp defualt-project/account.ts $PROJECT_NAME/
cp defualt-project/package.json $PROJECT_NAME/
cp defualt-project/README.md $PROJECT_NAME/
cp defualt-project/tsconfig.json $PROJECT_NAME/

# package.jsonのプロジェクト名を更新（macOS用のsed構文）
sed -i '' "s/defualt-project/$PROJECT_NAME/g" $PROJECT_NAME/package.json

# 新しいプロジェクトディレクトリに移動して依存関係をインストール
cd $PROJECT_NAME
npm install

echo "プロジェクト「$PROJECT_NAME」のセットアップが完了しました！"
echo "cd $PROJECT_NAME を実行してプロジェクトディレクトリに移動し、"
echo "npx tsx account.ts でアカウント生成スクリプトを実行できます。"
```

## macOS での実行方法

1. スクリプトに実行権限を付与します：

   ```bash
   chmod +x setup.sh
   ```

2. スクリプトを実行します：
   ```bash
   ./setup.sh my-project-name
   ```

## 注意点

1. macOS の`sed`コマンドでは、`-i`オプションの後に空の文字列（`''`）が必要です。これが Linux 版との主な違いです。

2. スクリプトを実行する前に、必ず実行権限を付与してください。

3. macOS のバージョンによっては、デフォルトのシェルが`bash`ではなく`zsh`になっている場合がありますが、このスクリプトは両方で動作します。

4. スクリプトを実行するディレクトリに`defualt-project`ディレクトリが存在することを確認してください。

このスクリプトを使用すれば、macOS でも簡単に Symbol プロジェクトをセットアップできます。

# Windows でのセットアップ実行方法まとめ

Windows では、PowerShell スクリプト（setup.ps1）またはバッチファイル（setup.bat）を使用してプロジェクトをセットアップできます。以下に各方法の実行手順をまとめます。

## PowerShell スクリプト（setup.ps1）を使用する方法

1. **PowerShell を開く**

   - スタートメニューから「PowerShell」を検索して開きます

2. **プロジェクトのディレクトリに移動**

   ```powershell
   cd C:\path\to\your\project
   ```

3. **実行ポリシーを一時的に変更（必要な場合）**

   ```powershell
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

4. **スクリプトを実行**
   ```powershell
   .\setup.ps1 my-project-name
   ```
   （プロジェクト名を指定しない場合は「my-symbol-project」になります）

## バッチファイル（setup.bat）を使用する方法

### コマンドプロンプトから実行

1. **コマンドプロンプトを開く**

   - スタートメニューから「cmd」または「コマンドプロンプト」を検索して開きます

2. **プロジェクトのディレクトリに移動**

   ```cmd
   cd C:\path\to\your\project
   ```

3. **バッチファイルを実行**
   ```cmd
   setup.bat my-project-name
   ```
   （プロジェクト名を指定しない場合は「my-symbol-project」になります）

### PowerShell からバッチファイルを実行

PowerShell からバッチファイルを実行する場合は、以下のいずれかの方法を使用します：

1. **cmd /c を使用**

   ```powershell
   cmd /c setup.bat my-project-name
   ```

2. **& 演算子と完全パスを使用**
   ```powershell
   & "C:\path\to\your\project\setup.bat" my-project-name
   ```

## セットアップ後の操作

セットアップが完了したら、以下の操作を行います：

1. **プロジェクトディレクトリに移動**

   ```
   cd my-project-name
   ```

2. **アカウント生成スクリプトを実行**
   ```
   npx tsx account.ts
   ```

## 推奨方法

Windows では、PowerShell スクリプト（setup.ps1）を使用することをお勧めします。PowerShell は Windows の最新のシェル環境であり、より強力な機能を提供します。また、バッチファイルよりも柔軟性が高く、エラー処理も優れています。
