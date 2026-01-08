FROM vllm/vllm-openai:v0.13.0

COPY start.sh /app/

RUN sed -i 's/{Roles.assistant, Roles.tool}/{Roles.assistant, Roles.user, Roles.tool}/g' /usr/local/lib/python3.12/dist-packages/mistral_common/protocol/instruct/validator.py

ENTRYPOINT ["/app/start.sh"]
