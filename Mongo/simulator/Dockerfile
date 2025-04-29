FROM python:3.11-slim

WORKDIR /app

COPY simulator.py .

RUN pip install pymongo

CMD ["python", "simulator.py"]