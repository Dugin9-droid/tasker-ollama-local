# tasker-ollama-local
Local AI automation on Android using Termux, Ollama, Tasker, and Termux:Tasker
# Tasker Ollama Local

Local AI automation on Android using **Termux**, **Ollama**, **Tasker**, and **Termux:Tasker** without Shizuku.

## Features

- Run Ollama locally in Termux
- Trigger prompts from Tasker
- Use Termux:Tasker to run scripts
- Keep everything on-device
- Lightweight setup for lower-storage phones

## Stack

- Termux
- Ollama
- Tasker
- Termux:Tasker
- Termux:API

## Install

Run in Termux:

```bash
pkg update -y && pkg upgrade -y
pkg install ollama termux-api nano -y
mkdir -p ~/.termux/tasker
