FROM python:2.7.18-slim-buster
RUN apt-get update
RUN apt-get install -y --no-install-recommends build-essential libpq-dev
RUN apt-get install -y --no-install-recommends libmemcached-dev zlib1g-dev
WORKDIR /app
COPY ./requirements.txt  ./Makefile ./
RUN make install

CMD ["make", "serve"]