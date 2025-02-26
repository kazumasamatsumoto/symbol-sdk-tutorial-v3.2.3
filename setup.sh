#!/bin/bash

# プロジェクト名を引数から取得（デフォルトは my-symbol-project）
PROJECT_NAME=${1:-my-symbol-project}

# 新しいディレクトリを作成
mkdir -p $PROJECT_NAME

# デフォルトプロジェクトからファイルをコピー
cp default-project/.gitignore $PROJECT_NAME/
cp default-project/account.ts $PROJECT_NAME/
cp default-project/package.json $PROJECT_NAME/
cp default-project/README.md $PROJECT_NAME/
cp default-project/tsconfig.json $PROJECT_NAME/

# package.jsonのプロジェクト名を更新（macOS用のsed構文）
sed -i '' "s/default-project/$PROJECT_NAME/g" $PROJECT_NAME/package.json

# 新しいプロジェクトディレクトリに移動して依存関係をインストール
cd $PROJECT_NAME
npm install

echo "プロジェクト「$PROJECT_NAME」のセットアップが完了しました！"
echo "cd $PROJECT_NAME を実行してプロジェクトディレクトリに移動し、"
echo "npx tsx account.ts でアカウント生成スクリプトを実行できます。" 