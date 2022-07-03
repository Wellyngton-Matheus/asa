# Projeto ASA - Configuração de um servidor DNS bind9 em docker

### Equipe

- Francisco de Assis Frederico Neto (Matrícula: 20192014050019)
- Jefferson Bruno Gomes do Nascimento (Matrícula: 20181014050042)
- Wellyngton Matheus Sena de Macedo (Matrícula: 20192014050022)
##

### Configuração

Seguir os passos abaixo para fazer o download e configurar o DNS.

    git clone https://github.com/Wellyngton-Matheus/asa.git

    cd asa/

    ocker build -t bind9 .

    docker run -p 0.0.0.0:53:53/ udp -p 0.0.0.0:53:53/tcp bind9

**Obs:** Antes de executar o "docker build" deve-se alterar o IP para o da sua máquina no arquivo db.asa
