FROM vllm/vllm-openai:v0.11.2

COPY start.sh /app/

ENTRYPOINT ["/app/start.sh"]
