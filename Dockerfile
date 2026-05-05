FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -U pip
RUN pip install --no-cache-dir .

ENV PATH="/root/.local/bin:$PATH"

ENTRYPOINT ["hermes"]
