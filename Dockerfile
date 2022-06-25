FROM python:3.9-bullseye
WORKDIR /app
ADD main.py main.py
ADD requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
ENV PYTHONPATH /app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
