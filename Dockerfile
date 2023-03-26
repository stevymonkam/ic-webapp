FROM python:3.6-alpine

COPY app.py /
RUN pip install flask==1.1.2

EXPOSE 8080

ENTRYPOINT ["python", "./app.py"]
