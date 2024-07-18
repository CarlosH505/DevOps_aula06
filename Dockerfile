# Dockerfile        
FROM python:3.8-slim
RUN  pip install --upgrade pip

WORKDIR /app

COPY . .


RUN pip install --no-cache-dir -r requeriments.txt
ENV FLASK_APP=app

CMD ["python", "app.py"]