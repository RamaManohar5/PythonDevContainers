FROM python:3.11-slim-bullseye

WORKDIR /code

COPY . /code/

RUN apt-get update

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python"]