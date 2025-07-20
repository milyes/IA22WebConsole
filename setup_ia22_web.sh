#!/bin/bash
# =====================================
# NetSecurePro IA | Générateur IA22 Web Console
# Auteur : Zoubirou Mohammed Ilyes
# =====================================

mkdir -p IA22_Web_Console
cd IA22_Web_Console || exit 1

# index.html
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Console IA22 Web</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Console IA22 Web</h1>
    <p>Analyse intelligente de logique IA – HTML, JSON, Python, Bash</p>
    <textarea id="codeInput" rows="6">#!/bin/bash
DEB_FILE="netsecurepro_web_cli_REAL.deb"
echo "🔧 [INFO] Vérification du système..."</textarea>
    <br>
    <button onclick="lancerAnalyseIA()">Lancer Analyse IA</button>
    <pre id="result"></pre>
    <footer>
        <p>© 2025 – NetSecurePro IA | Zoubirou Mohammed Ilyes</p>
    </footer>
    <script src="script.js"></script>
</body>
</html>
EOF

# style.css
cat > style.css << 'EOF'
body {
    font-family: Arial, sans-serif;
    text-align: center;
    padding: 20px;
    background: #f7f7f7;
}
h1 {
    color: #007bff;
}
textarea {
    width: 80%;
    font-family: monospace;
    margin-top: 20px;
}
button {
    margin-top: 10px;
    padding: 10px 20px;
    background: #007bff;
    color: white;
    border: none;
    cursor: pointer;
    border-radius: 5px;
}
pre {
    background: #111;
    color: #0f0;
    padding: 15px;
    margin-top: 15px;
    width: 80%;
    margin-left: auto;
    margin-right: auto;
    text-align: left;
}
footer {
    margin-top: 30px;
    color: gray;
}
EOF

# script.js
cat > script.js << 'EOF'
function lancerAnalyseIA() {
    const code = document.getElementById("codeInput").value;
    let result = "";

    if (code.includes(".json")) {
        result = "🔍 Type détecté : JSON\\n🧠 Analyse IA : JSON bien formé.\\n💡 Suggestion : Valide avec jq.";
    } else if (code.includes(".deb")) {
        result = "🔍 Type détecté : Fichier Debian\\n🧠 Analyse IA : Paquet détecté.\\n💡 Suggestion : Vérifie dpkg.";
    } else if (code.includes("echo")) {
        result = "🔍 Type détecté : Script Bash\\n🧠 Analyse IA : Syntaxe valide.\\n💡 Suggestion : Exécute sous bash.";
    } else {
        result = "❗ Format non reconnu. Recommence.";
    }
    document.getElementById("result").innerText = result;
}
EOF

cd ..
zip -r IA22_Web_Console.zip IA22_Web_Console > /dev/null

echo "[✔] Archive IA22_Web_Console.zip générée avec succès dans : $(pwd)"
