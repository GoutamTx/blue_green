FROM python:3.12-slim-bookworm
WORKDIR /app
COPY app/ .
RUN pip install flask
ENV VERSION=blue
CMD ["python", "app.py"]

