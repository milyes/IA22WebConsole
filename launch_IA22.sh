#!/bin/bash
# IA22 Launcher Script · by Zoubirou Mohammed Ilyes · NetSecurePro IA
# Version : IA22 Final | Compatible Termux / ISO / WebView

clear
echo "────────────────────────────────────"
echo "🧠 IA22 COGNITIVE INTERFACE BOOT"
echo "────────────────────────────────────"
echo "Signed Intelligence. Projected Vision."
echo "NetSecurePro IA | Zoubirou Mohammed Ilyes"
echo "https://orcid.org/0009-0007-7571-3178"
echo "────────────────────────────────────"
echo " 📂 Initializing assets/ splashscreen..."
sleep 1
img2sixel ./assets/splashscreen.png 2>/dev/null || echo "[Splashscreen loaded]"
sleep 2
clear
echo "✅ IA22 SYSTEM READY."
echo "────────────────────────────────────"

# Auto-detect if CLI or mobile
if command -v termux-open >/dev/null; then
    echo "🔗 Opening in Termux WebView..."
    termux-open ./index.html
elif command -v xdg-open >/dev/null; then
    echo "🔗 Opening in Desktop Web Browser..."
    xdg-open ./index.html
else
    echo "Manual start required. Please open index.html in browser."
fi

echo "────────────────────────────────────"
echo "🛸 IA22 Cockpit launched successfully."
