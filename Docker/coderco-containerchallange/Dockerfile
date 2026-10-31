FROM python:3.10

WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    libmariadb-dev \
    pkg-config

RUN pip install --no-cache-dir flask redis


COPY . .

EXPOSE 5002

CMD ["python", "app.py"]
