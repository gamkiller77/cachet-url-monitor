FROM python:2-onbuild
MAINTAINER Mitsuo Takaki <mitsuotakaki@gmail.com>

COPY config.yml /usr/src/app/config/
# removed the line below to let env take place
#VOLUME /usr/src/app/config/

CMD ["python", "cachet_url_monitor/scheduler.py", "config/config.yml"]
