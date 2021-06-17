cd \home\
mkdir MinecraftServer
sudo apt-get install -y wget apt-transport-https gnupg
wget https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public
gpg --no-default-keyring --keyring ./adoptopenjdk-keyring.gpg --import <dowloaded-keyfile-name><.ext>
gpg --no-default-keyring --keyring ./adoptopenjdk-keyring.gpg --export --output adoptopenjdk-archive-keyring.gpg 
rm adoptopenjdk-keyring.gpg
sudo mv adoptopenjdk-archive-keyring.gpg /usr/share/keyrings 
echo "deb [signed-by=/usr/share/keyrings/adoptopenjdk-archive-keyring.gpg] https://adoptopenjdk.jfrog.io/adoptopenjdk/deb <codename> main" | sudo tee /etc/apt/sources.list.d/adoptopenjdk.list
sudo apt-get update
cd MinecraftServer
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
java -jar BuildTools.jar --rev latest
echo "you need to start the server by typing start.sh  in the termnial"
