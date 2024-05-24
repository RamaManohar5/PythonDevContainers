FROM python:3.11-slim-bookworm

WORKDIR /git_repo

COPY ./requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY ./src ./src

CMD [ "/bin/sh", "-c", "bash" ]

