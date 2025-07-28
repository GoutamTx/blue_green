FROM python:3.10-slim
WORKDIR /app
COPY app/ .
RUN pip install flask
ENV VERSION=blue
CMD ["python", "app.py"]

