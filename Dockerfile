FROM vllm/vllm-openai:nightly-434ac76a7c2f2eb6aac80bb3b73cf856e1bba0e6

COPY start.sh /app/

ENTRYPOINT ["/app/start.sh"]
