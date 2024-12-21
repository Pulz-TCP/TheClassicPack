FROM centos:latest

# Originally made by João Ferreira <jmdf@protonmail.com>

RUN yum -y update
RUN yum -y install java-1.8.0-openjdk-headless wget unzip

RUN useradd -r -m -U -d /opt/minecraft -s /bin/bash -u 10001 minecraft

RUN wget http://files.theclassicpack.com/SERVER/TCP-3.3.6_SERVER.zip
RUN unzip -d /opt/minecraft TCP-3.3.6_SERVER.zip

COPY eula.txt /opt/minecraft/
RUN chown -R minecraft:minecraft /opt/minecraft/

USER minecraft

WORKDIR /opt/minecraft

EXPOSE 25565

# Minimum RAM for TCP server. Monitor resource requirements on a per-server basis an increase as needed.
ENV forge_path="find . -maxdepth 1 -type f -iname 'forge*.jar'"
CMD java -Xms3024M -Xmx3048M -jar $(eval ${forge_path}) nogui
