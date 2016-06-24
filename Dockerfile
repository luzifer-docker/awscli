FROM python:2.7-onbuild

RUN set -ex \
 && apt-get update \
 && apt-get install -y groff \
 && apt-get autoremove -y

VOLUME ["/root/.aws"]

ENTRYPOINT ["/usr/local/bin/aws"]
CMD ["help"]
