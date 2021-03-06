FROM    ubuntu:19.10
WORKDIR /opt/koadic
RUN     apt update && apt install -y python3 python3-pip socat 
COPY    . /opt/koadic
RUN     pip3 install -r requirements.txt
ENTRYPOINT ["./koadic"]
