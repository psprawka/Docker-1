docker build --tag teamspeak .
docker run --publish 10011:10011 --publish 30033:30033 --publish 41144:41144 --publish 9987:9987/udp --name TeamSpeakServer teamspeak
