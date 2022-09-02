FROM python:3.7.3-alpine3.9

RUN mkdir -p /home/ec2-user/app
WORKDIR /home/ec2-user/app

COPY ./src/requirements.txt /home/ec2-user/app/requirements.txt
RUN sudo pip install -r requirements.txt

COPY ./src /home/ec2-user/app/
ENV FLASK_APP=server.py

CMD flask run -h 0.0.0.0 -p 5000
EXPOSE 5000
