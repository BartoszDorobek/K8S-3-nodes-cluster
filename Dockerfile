FROM ubuntu

#MAINTAINER bartosz "bartoszdorobek19@gmail.com"

RUN apt-get update -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip python3-dev -y
#RUN nginx

WORKDIR /

COPY ./requirements.txt ./requirements.txt
 
RUN pip3 install -r /requirements.txt 

COPY . /

EXPOSE 5000

CMD ["python3", "src/app.py"]


