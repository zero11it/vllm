FROM vllm/vllm-openai:v0.9.1

COPY start.sh /app/

ENTRYPOINT ["/app/start.sh"]
