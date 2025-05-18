FROM ubuntu:22.04

RUN apt update && apt install -y wireguard iproute2 iputils-ping curl net-tools

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
