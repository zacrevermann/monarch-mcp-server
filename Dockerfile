FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml requirements.txt ./
COPY src/ ./src/

RUN pip install --no-cache-dir -e .

ENV MCP_TRANSPORT=sse
ENV FASTMCP_HOST=0.0.0.0
ENV FASTMCP_PORT=8000
ENV PORT=8000

EXPOSE 8000

CMD ["monarch-mcp-server"]
