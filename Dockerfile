FROM python:3.12.7-slim

COPY src/ /src/

WORKDIR /
RUN pip install -r src/requirements.txt

CMD [ "uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000" ]
