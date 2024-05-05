FROM ubuntu:22.04

WORKDIR /server

COPY . .

RUN apt update && apt upgrade -y

RUN apt install openjdk-21-jdk -y

RUN java -Xmx512M -Xms512M -jar server.jar nogui -y

EXPOSE 25565

CMD java -Xmx512M -Xms512M -jar server.jar nogui