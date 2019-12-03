FROM python:3.8.0-slim-buster
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY ./src /app
ENV FLASK_APP=app.py
ENTRYPOINT [ "flask", "run", "--host","0.0.0.0","--port", "5000" ]