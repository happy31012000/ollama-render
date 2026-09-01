#!/bin/bash

set -e

echo "Starting Ollama..."
ollama serve &

echo "Waiting for Ollama..."
until curl -s http://127.0.0.1:11434/api/tags > /dev/null; do
    sleep 2
done

echo "Pulling qwen2.5:7b..."
ollama pull qwen2.5:7b

echo "Model ready!"
ollama list

wait
