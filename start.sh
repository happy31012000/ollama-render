#!/bin/bash

set -e

echo "=== Starting Ollama ==="

ollama serve &

echo "=== Waiting for Ollama ==="

sleep 10

echo "=== Pulling qwen2.5:7b ==="

ollama pull qwen2.5:7b

echo "=== Installed models ==="

ollama list

echo "=== Ollama is ready ==="

wait
