#!/data/data/com.termux/files/usr/bin/bash
echo "[🌐] Lancement du tunnel Cloudflare pour IA2 Proxy..."
pkg install -y cloudflared
cloudflared tunnel --url http://localhost:8080
