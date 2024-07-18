# Dockerfile        
FROM python:3.8-slim
RUN  pip install --upgrade pip

WORKDIR /app

COPY ./app.py /app/
COPY . .


RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_APP=app

CMD ["python", "app.py"]