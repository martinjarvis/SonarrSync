FROM python:3-alpine

VOLUME /config

COPY SonarrSync.py /
COPY requirements.txt /
COPY startup.sh /
COPY Config.default /

RUN  pip install -r requirements.txt && chmod 755 /startup.sh

ENTRYPOINT [ "sh","/startup.sh", "--config", "/config/config.txt" ]