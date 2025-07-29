FROM python:3.12-alpine
WORKDIR /app
RUN apk update && apk upgrade
COPY app/ .
RUN pip install --no-cache-dir flask
ARG VERSION=blue	
ENV VERSION=$VERSION
CMD ["python", "app.py"]

