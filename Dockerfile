FROM python:3.7.3-alpine3.9

RUN mkdir -p /app
WORKDIR /app

COPY ./src/requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY ./src /app/
ENV FLASK_APP=server.py

EXPOSE 5000 80

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
