    
FROM lyukun/ubuntu-sikulix-base

LABEL  maintainer="LK"

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN \
#==================================================
# vncviewer
#==================================================
  apt-get update && \
  apt-get -y install xtightvncviewer \
  vim && \
  apt-get clean && rm -rf /var/lib/apt/lists/* &&\
  cd /root/SikuliX && \
  wget https://raiman.github.io/SikuliX1/sikulix.jar -O sikulix.jar
  


ENV SCREEN_WIDTH 1920
ENV SCREEN_HEIGHT 1200
ENV SCREEN_DEPTH 24
ENV DISPLAY :0
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8	
EXPOSE 5900

CMD ["/usr/bin/supervisord"]
