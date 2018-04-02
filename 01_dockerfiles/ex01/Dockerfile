FROM debian

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install curl -y
RUN apt-get install -y bzip2

RUN curl http://dl.4players.de/ts/releases/3.0.13.6/teamspeak3-server_linux_amd64-3.0.13.6.tar.bz2 > TS_server.tar.bz2
RUN tar -xjvf TS_server.tar.bz2

EXPOSE 9987/udp
EXPOSE 30033
EXPOSE 10011
EXPOSE 41144

WORKDIR /teamspeak3-server_linux_amd64

ENTRYPOINT ["sh", "ts3server_minimal_runscript.sh"]

# tar flags:
#   -x: extracts the files specified by one or more File parameters from
#       the archive,
#   -f: location of archive.
#
# EXPOSE - eposes ports to show that they're supposed to be the ports.
#   This command does not make ports accessible from the host by default,
#   it is only a hint what should be mapped*, so it is necessary to map*
#   them! The ports I use:
#   port 9987 - voice,
#   port 30033 - files,
#   port 10011 - SQ,
#   port 41144 - TSDNS - the server.
#
# WORKDIR - sets a working directiory. In this case we set to default
#
# mapping ports is routing them from my docker machine to my docker
#   container
