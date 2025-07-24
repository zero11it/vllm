FROM vllm/vllm-openai:v0.9.2

COPY start.sh /app/

ENTRYPOINT ["/app/start.sh"]
