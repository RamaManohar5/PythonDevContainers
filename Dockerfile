FROM python:3.11-slim-bookworm

WORKDIR /

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

