
FROM ubuntu/bind9

# update, e instalação do bind9, alem de outros utilitarios de DNS 
RUN apt-get update \
  && apt-get install -y \
  nano \
  dnsutils 


# Copiando arquivos de configurações para o container
COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/
COPY db.asa /etc/bind/zones/

# Executação infinita 
CMD ["/bin/bash", "-c", "while :; do sleep 10; done"]
