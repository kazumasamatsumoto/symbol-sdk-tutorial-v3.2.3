# プロジェクト名を引数から取得（デフォルトは my-symbol-project）
param([string]$ProjectName = "my-symbol-project")

# 新しいディレクトリを作成
New-Item -ItemType Directory -Force -Path $ProjectName | Out-Null

# デフォルトプロジェクトからファイルをコピー
Copy-Item "default-project\.gitignore" -Destination "$ProjectName\"
Copy-Item "default-project\account.ts" -Destination "$ProjectName\"
Copy-Item "default-project\package.json" -Destination "$ProjectName\"
Copy-Item "default-project\README.md" -Destination "$ProjectName\"
Copy-Item "default-project\tsconfig.json" -Destination "$ProjectName\"

# package.jsonのプロジェクト名を更新
(Get-Content "$ProjectName\package.json") -replace "default-project", $ProjectName | Set-Content "$ProjectName\package.json"

# 新しいプロジェクトディレクトリに移動して依存関係をインストール
Set-Location -Path $ProjectName
npm install

Write-Host "プロジェクト「$ProjectName」のセットアップが完了しました！"
Write-Host "cd $ProjectName を実行してプロジェクトディレクトリに移動し、"
Write-Host "npx tsx account.ts でアカウント生成スクリプトを実行できます。" 