echo "Deploying..."
rsync -azvW --ignore-times -e "ssh -p 1610" build/web/* root@135.181.97.90:/usr/share/nginx/html

