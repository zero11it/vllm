FROM vllm/vllm-openai:v0.8.5.post1

COPY start.sh /app/

ENTRYPOINT ["/app/start.sh"]
