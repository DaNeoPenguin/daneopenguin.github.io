mkdir MinecraftServer
apt-get install -y wget apt-transport-https gnupg
apt-get update
cd MinecraftServer
wget https://download.getbukkit.org/spigot/spigot-1.17.jar

wget https://titoudelaplage.github.io/linuxsh/minecraftserver.files/start.sh

echo "you need to start the server by typing start.sh  in the termnial"
