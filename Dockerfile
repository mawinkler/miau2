# FROM python:3.12-slim-bullseye
FROM python:3.12-alpine

WORKDIR /app

# Copy files required for the app to run, see .dockerignore
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

# Tell the port number the container should expose
EXPOSE 5000

# Run the application
CMD ["python3", "/app/app.py"]
