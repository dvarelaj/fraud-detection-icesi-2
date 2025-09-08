FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

COPY model/ ./model/

# Make sure start.sh is executable
#RUN chmod +x start.sh

# Expose the port (Render sets $PORT dynamically, but 10000 works locally)
EXPOSE 10000

# Command to run your app
#CMD ["./start.sh"]
CMD ["uvicorn", "main:app","--host","0.0.0.0","--port","10000"]
