FROM python:3.9-slim

WORKDIR /app

COPY app_3/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

COPY app_3/model/ ./model/

EXPOSE 8000

CMD ["uvicorn", "app_3/main:app","--host","0.0.0.0","--port","8000"]
