FROM python:3.14-slim
WORKDIR /app
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/Alishahryar1/free-claude-code.git .
RUN pip install --no-cache-dir -e .
CMD sh -c "fcc-server --host 0.0.0.0 --port $PORT"
