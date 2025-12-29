FROM vllm/vllm-openai:v0.13.0

COPY start.sh /app/

ENTRYPOINT ["/app/start.sh"]
