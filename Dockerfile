    
FROM lyukun/ubuntu-sikulix-base

LABEL  maintainer="LK"

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENV SCREEN_WIDTH 1920
ENV SCREEN_HEIGHT 1200
ENV SCREEN_DEPTH 24
ENV DISPLAY :0
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8	
EXPOSE 5900

CMD ["/usr/bin/supervisord"]
