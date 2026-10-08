# Overlay of google-ctf 2023/quals/web-under-construction/challenge/Dockerfile (vendored unchanged in app/).
# What differs from upstream:
# - the COPY sources point into app/challenge/ (this folder is the build context);
# - the environment upstream sets in challenge.yaml (Kubernetes env and secret) is baked in with ENV:
#   the same values, since Isoloom has no per-machine environment.
# Everything else is upstream's, line for line.

FROM gcr.io/kctf-docker/challenge@sha256:d884e54146b71baf91603d5b73e563eaffc5a42d494b1e32341a5f76363060fb

RUN apt-get update && \
    apt-get install -y mysql-client \
    && rm -rf /var/lib/apt/lists/*

COPY app/challenge/flask/ /app/

VOLUME /tmp/db

WORKDIR /app/
VOLUME /tmp

RUN pip install -r requirements.txt

COPY app/challenge/start.sh /tmp
COPY app/challenge/cleanup.sh /tmp

ENV FLASK_SECRET_KEY=49e316f2a16535decacb9e6997f34b97 \
    MYSQL_DATABASE=forge \
    MYSQL_USER=forge \
    DB_HOST=under-construction-mysql \
    MIGRATOR_TOKEN=Yw4Ynl59Deu37r1zyCWbHYlRU14QXl2bcobHyHGY \
    MYSQL_PASSWORD=Ah9LUPhPEknU7jceKW4ya9Hwek4GrpLmzYFCgnL1lYg

CMD kctf_setup && \
    /tmp/start.sh
