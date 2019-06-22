    
FROM lyukun/ubuntu-sikulix
LABEL  maintainer="LK"

RUN \
#==================================================
# vncviewer vim 
#==================================================
  apt-get update && \
  apt-get -y install xtightvncviewer \
  vim \
#==================================================
# python3 IDE
#==================================================
  spyder3 && \
  apt-get clean && rm -rf /var/lib/apt/lists/* &&\
#==================================================
# sikulix IDE
#==================================================
  cd /root/SikuliX && \
  wget https://raiman.github.io/SikuliX1/sikulix.jar -O sikulix.jar 

COPY fluxbox-menu /etc/X11/fluxbox/fluxbox-menu
