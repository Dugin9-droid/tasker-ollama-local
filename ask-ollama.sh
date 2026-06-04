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
