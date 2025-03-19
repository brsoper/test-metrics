FROM python:3.12

RUN groupadd -g 1001 localuser && useradd -u 1001 -g localuser -m user

USER user

WORKDIR /app

COPY main.py .

# Add default environment variable
ENV OUTPUT_DIR=/mnt/data

CMD ["python", "main.py"]
