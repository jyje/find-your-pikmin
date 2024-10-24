port=8000

install:
	pip install -r src/requirements.txt

dev:
	uvicorn src.main:app --host 0.0.0.0 --port $(port) --reload

start:
	uvicorn src.main:app --host 0.0.0.0 --port $(port)
