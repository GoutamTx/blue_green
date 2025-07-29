FROM python:3.12-alpine
WORKDIR /app
COPY app/ .
RUN pip install --no-cache-dir flask
ENV VERSION=blue
CMD ["python", "app.py"]

