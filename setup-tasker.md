# Tasker Setup

## Plugin method

1. Open Tasker
2. Create a task named `Ask Ollama`
3. Add **Plugin -> Termux:Tasker**
4. Set executable to `ask-ollama.sh`
5. Set arguments to `%prompt`
6. Enable background execution
7. Enable wait for result
8. Show `%stdout` in a notification or popup

## Requirements

- Ollama server running in Termux
- Model downloaded: `smollm:135m`
- Termux and Tasker excluded from battery optimization
