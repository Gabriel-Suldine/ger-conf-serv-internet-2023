##________________________________________________COMANDOS BÁSICOS________________________________________________###



# hello world
docker run hello-world


#comando para executar container e após ele finalizar, deletar sozinho.
docker run --rm hello-world  #usando a flag --rm ele exclui após parar. rm de REMOVE (~CONTAINER TEMPORÁRIO~)


#Listar os containers
docker container list #comando completo para listar 
docker ps     #para listar apenas os containers em execução
docker ps -a  #para listar todos containers até 


#Listar imagem offline (cache do docker hub)
docker image list


#comando de gerenciamento do estado do container
docker start NOME_DO_CONTAINER || ID_do_CONTAINER #iniciar
docker stop NOME_DO_CONTAINER || ID_do_CONTAINER #parar
docker container restart NOME_DO_CONTAINER || ID_do_CONTAINER #reiniciar
docker rm NOME_DO_CONTAINER || ID_do_CONTAINER # DELETAR, não deve deletar o container em execução, deve-se parar ele antes. #verificar status do container que deve estar como Exited



#Comando em lotes para gerenciar container a partir dos id's (criar um array de containers)   (Dica: Comando em lotes usar apenas  em ambiente de teste)
docker stop $(docker ps -a -q)  #parar todos    #flag -q retorna o ID do container   #da para usar tanto o stop para parar mas também o start, restart, rm
docker start $(docker ps -a -q)  #inicia todos
docker container restart $(docker ps -a -q)  #reinicia todos
docker rm $(docker ps -a -q)  # DELETA todos.  #verificar status do container que deve estar como Exited


# Zerar o docker 
docker system prune --all -f

##________________________________________________COMANDOS com execução constante________________________________________________###


docker run --name nginx1 -p 80:80 -d --rm nginx:1.25-alpine
docker run --name nginx2 -p 81:80 -d nginx:1.25-alpine


