FROM python:3.10-alpine

WORKDIR /app

COPY . .

EXPOSE 8888

RUN pip install -r requirements.txt

CMD ["python", "./main.py"]