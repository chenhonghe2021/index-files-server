docker compose down
docker compose build
docker compose up -d

echo "✅ Nginx文件服务器: http://localhost:18180"
echo "✅ Alist文件管理器: http://localhost:5744"
echo "🔑 随机生成openlist管理员密码: docker exec -it openlist-file-server ./openlist admin random" 
echo "🔑 设置openlist管理员新密码: docker exec -it openlist-file-server ./openlist admin set 123admin" # 手动设置一个密码,`123admin`是指你需要设置的密码
