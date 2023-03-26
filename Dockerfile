FROM python:3.6-alpine

COPY app.py /
RUN pip install flask==1.1.2

EXPOSE 8080

ENV ODOO_URL "https://hub.docker.com/_/odoo"
ENV PGADMIN_URL "https://hub.docker.com/r/dpage/pgadmin4/"

ENTRYPOINT ["python", "./app.py"]
