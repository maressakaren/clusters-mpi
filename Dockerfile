# Use uma imagem base oficial do Ubuntu
FROM ubuntu:latest

# Instale dependências necessárias
RUN apt-get update && \
    apt-get install -y build-essential wget mpich mpich-doc libmpich-dev

#Criando um usuário não root
RUN useradd -ms /bin/bash mpiuser

# Defina o diretório de trabalho
WORKDIR /home/mpiuser

#Definindo o usário não-root
USER mpiuser

# Copie o código MPI para o contêiner
COPY file_mpi.c /home/mpiuser/

# Compile o programa MPI
RUN mpicc -o /home/mpiuser/file_mpi /home/mpiuser/file_mpi.c

# Defina o ponto de entrada padrão
CMD ["bash"]

