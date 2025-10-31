FROM vllm/vllm-openai:v0.11.0

COPY start.sh /app/

ENTRYPOINT ["/app/start.sh"]
