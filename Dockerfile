FROM steamcmd/steamcmd:debian

# Update system and install ufw
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y ufw

# Purge the cache & orphaned packages
RUN apt-get --purge autoremove -y
RUN apt-get clean -y

# Port management
EXPOSE 7777/tcp
EXPOSE 26017/udp

RUN ufw allow 7777/tcp
RUN ufw allow 26017/udp

# Create the user & directory for the server
RUN useradd -m nebhost
RUN mkdir -p /home/nebhost/server
RUN chown -R nebhost:nebhost /home/nebhost/server

# Install the server
RUN steamcmd +force_install_dir /home/nebhost/server +login anonymous +app_update 2353090 validate +quit

USER nebhost