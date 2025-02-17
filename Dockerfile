FROM python:slim-bookworm

RUN pip3 install mkdocs --break-system-packages

COPY init.sh /

RUN chmod a+x /init.sh

EXPOSE 8080

CMD ["/init.sh"]