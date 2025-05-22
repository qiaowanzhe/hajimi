FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN pip install uv
RUN uv pip install --system --no-cache-dir -r requirements.txt

EXPOSE 7890

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "7890"]
