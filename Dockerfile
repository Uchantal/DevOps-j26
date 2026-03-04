
FROM python:3.12-slim

# creating a directory
WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt


COPY . .
EXPOSE 8000

# to run application
CMD ["python"]
