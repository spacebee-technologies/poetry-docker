FROM python:3.11-slim

ARG POETRY_VERSION=2.2.1

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
RUN curl -sSL https://install.python-poetry.org | POETRY_VERSION=${POETRY_VERSION} python3 -

ENV PATH="/root/.local/bin:$PATH"

WORKDIR /workspace
