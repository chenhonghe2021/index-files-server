docker compose down
docker compose build
docker compose up -d

echo "✅ Nginx文件服务器: http://localhost:18088"
echo "✅ Alist文件管理器: http://localhost:5744"
echo "🔑 获取Alist管理员密码: docker exec -it openlist ./openlist admin"
