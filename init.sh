#!/bin/sh
set -e

# 您GitHub仓库的raw文件地址
BASE_URL="https://raw.githubusercontent.com/chenhonghe2021/index-files-server/master/nginx"

FILES=(
  "docker-compose.yml"
  "Dockerfile"
  "entrypoint.sh"
  "fix-permissions.sh"
  "nginx.conf"
  "start.sh"
)

echo "🚀 正在从您的仓库下载文件..."

for file in "${FILES[@]}"; do
  echo "↓ 下载 $file"
  curl -fsSL "${BASE_URL}/${file}" -o "$file"
done

echo "✅ 所有文件下载完成"
chmod +x start.sh entrypoint.sh fix-permissions.sh

echo "🐳 启动容器..."
./start.sh
