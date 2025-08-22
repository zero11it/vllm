FROM vllm/vllm-openai:v0.10.1.1

COPY start.sh /app/

ENTRYPOINT ["/app/start.sh"]
