FROM python:3.11-slim-bullseye

WORKDIR /code

COPY . /code/

RUN apt-get update && apt-get install -y git python3-pip

RUN pip3 install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python"]