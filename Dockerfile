FROM ubuntu:latest

WORKDIR /usr/src/app

COPY ./requirements.txt ./requirements.txt

RUN apt-get update && apt-get install -y git python3 python3-pip && pip3 install -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "--allow-root", "--ip", "0.0.0.0", "--no-browser"]

COPY . .
