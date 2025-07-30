#!/data/data/com.termux/files/usr/bin/bash

MODULE_NAME="IA2_MATRIX_IA_PLAYER"
MODULE_PATH="/data/data/com.termux/files/home/NetSecurePro_IA/modules/$MODULE_NAME"
HTML_FILE="$MODULE_PATH/index.html"
VIDEO_FILE="$MODULE_PATH/matrix_video.mkv"
LOG_FILE="$MODULE_PATH/logs/launch.log"

mkdir -p "$MODULE_PATH/logs"

echo "[*] Lancement du module $MODULE_NAME..." | tee -a "$LOG_FILE"

if [ -f "$HTML_FILE" ]; then
  echo "[✔] Interface IA détectée : $HTML_FILE" | tee -a "$LOG_FILE"
  termux-open "$HTML_FILE"
else
  echo "[✘] Fichier index.html manquant dans $MODULE_PATH" | tee -a "$LOG_FILE"
fi

if [ -f "$VIDEO_FILE" ]; then
  echo "[✔] Vidéo détectée : $VIDEO_FILE" | tee -a "$LOG_FILE"
  mpv "$VIDEO_FILE" --loop &
else
  echo "[!] Aucune vidéo MKV trouvée." | tee -a "$LOG_FILE"
fi

echo "[✓] Fin du script de lancement IA." | tee -a "$LOG_FILE"
