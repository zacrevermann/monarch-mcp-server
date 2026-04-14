FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml requirements.txt ./
COPY src/ ./src/

RUN pip install --no-cache-dir -e .

ENV MCP_TRANSPORT=sse
ENV PORT=8000

EXPOSE 8000

CMD ["monarch-mcp-server"]
