FROM python:3.12.7-slim

LABEL org.opencontainers.image.title="find-your-pikmin"
LABEL org.opencontainers.image.description="Find your pikmin powered by FastUI"
LABEL org.opencontainers.image.source="https://github.com/jyje/find-your-pikmin"

COPY src/ /src/

WORKDIR /
RUN pip install -r src/requirements.txt

CMD [ "uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000" ]
