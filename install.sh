#!/data/data/com.termux/files/usr/bin/bash
pkg update -y && pkg upgrade -y
pkg install ollama termux-api nano python -y
mkdir -p ~/.termux/tasker
cat > ~/.termux/tasker/ask-ollama.sh <<'EOF'
#!/data/data/com.termux/files/usr/bin/bash
prompt="$*"
python3 - "$prompt" <<'PY' | curl -s http://127.0.0.1:11434/api/generate -H 'Content-Type: application/json' -d @-
import json, sys
prompt = sys.argv[1]
print(json.dumps({
    "model": "smollm:135m",
    "prompt": prompt,
    "stream": False
}))
PY
EOF
chmod 700 ~/.termux/tasker/ask-ollama.sh
echo "Start Ollama with: ollama serve &"
echo "Pull model with: ollama pull smollm:135m"
