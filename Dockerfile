FROM python:3.6-alpine

WORKDIR /opt
COPY app.py /
RUN pip install flask==1.1.2

EXPOSE 8080

ENV ODOO_URL ""
ENV PGADMIN_URL ""

ENTRYPOINT ["python", "./app.py"]
