
FROM debian:latest

# update, e instalação do bind9, alem de outros utilitarios de DNS 
RUN apt-get update \
  && apt-get install -y \
  bind9 \
  bind9utils \
  bind9-doc \
  inetutils-ping \
  iputils-ping \
  nano \
  dnsutils 


# Copiando arquivos de configurações para o container
COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/
COPY forward.labredes.teste /etc/bind/zones/

# Executação infinita 
CMD ["/bin/bash", "-c", "while :; do sleep 10; done"]
