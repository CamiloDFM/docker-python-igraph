FROM python:3.7.4-slim-buster

RUN apt-get -y update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        libcairo-dev \
        libcairo2-dev \
        libffi-dev \
        libxml2-dev \
    && pip install --no-cache-dir \
        cairocffi \
        python-igraph \
    && rm -rf /var/lib/apt/lists* \
    && apt-get purge -y \
        build-essential \
    && apt-get autoremove -y
