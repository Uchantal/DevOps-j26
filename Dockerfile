
FROM python:3.9-slim

# creating a directory
WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt


COPY . .
EXPOSE 8000

# to Run the application with command

CMD ["python", "-m", "http.server", "8000"]
