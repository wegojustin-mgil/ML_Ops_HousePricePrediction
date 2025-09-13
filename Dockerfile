FROM python:3.11-slim
WORKDIR /app
COPY src/api/ .
RUN pip install -r requirements.txt

# Create models directory and copy model files
RUN mkdir -p models/trained
COPY models/ models/

EXPOSE 8000
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]