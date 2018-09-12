FROM dmaugis/zmq

COPY install-intrinsic-bell.sh /tmp/
RUN  /tmp/install-intrinsic-bell.sh  
RUN  rm /tmp/install-intrinsic-bell.sh
WORKDIR /intrinsic-bell
CMD ["bash"]

