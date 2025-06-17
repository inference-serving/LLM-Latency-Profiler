#!/bin/bash

MODELS=(
  # "gpt2"
  # "distilgpt2"
  # "sshleifer/tiny-gpt2"
  # "facebook/opt-125m"
  # "facebook/opt-350m"
  # "tiiuae/falcon-rw-1b"
  # "TinyLlama/TinyLlama-1.1B-Chat-v1.0"
  meta-llama/Llama-3.2-1B
  meta-llama/Llama-3.2-3B
)


mkdir -p results

for MODEL in "${MODELS[@]}"; do
  echo -e "\n🟡 Running benchmark for: $MODEL"
  python3 main.py \
    --model "$MODEL" \

  sleep 3  # Optional: pause between runs to free up memory
done

echo -e "\n✅ All benchmarks completed."

