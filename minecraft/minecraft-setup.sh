sudo apt-get update

sudo apt-get install -y openjdk-8-jre-headless
sudo apt-get install -y screen
sudo apt-get install -y unzip

# scp -r /Users/chris/Projects/machines/configuration/doblerworld-minecraft-pauline/backup/* user@192.168.15.8:~


# could put this behind upgrade flag

mkdir minecraft_server
cd minecraft_server
wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar

# todo: discover issue with minecraft game broadcast. below is wip.
# sudo iptables -A INPUT -m state --state NEW -m udp -p udp --dport 4445 -j ACCEPT
# sudo iptables -A OUTPUT -m state --state NEW -m udp -p udp --dport 4445 -j ACCEPT
# sudo apt-get install iptables-persistent
# sudo netfilter-persistent save

# todo: configure this to startup on the machine
# java -Xmx1024M -Xms1024M -jar server.jar nogui
# cd minecraft_server
# ./start.sh

# screen -S "Minecraft server 1"
# screen -r