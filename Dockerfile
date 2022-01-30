FROM python:3.8

WORKDIR /fastapi-app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./app ./app

CMD ["uvicorn", "./app/main.py", "--host", "0.0.0.0", "--port", "8000"]