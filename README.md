## Porquê na minha máquina funciona, mas na prod não?

- Antigamente existia a ideia de solucionar esse problema por meio de máquinas virtuais, uma instância de uma nova máquina, com todas as features de um S.O. convencional, só que ter uma máquina virtual com a configuração de um determinado ambiente se torna muito pesado e caro de se manter. A solução pensada foi usar os containeres, que não tem um kernel base, e que usa um espaço alocado da sua própria máquina para operar. O que imediatamente se torna uma decisão muito mais otimizada e menos complexa que definir um sistema operacional inteiro.

- Mas antes de falar mais sobre os containeres, é importante entender o que são as imagens.

### Imagem:

> Especificações de como o usuário quer que o seu container seja:
>
> 1. Sua base(ubuntu, alpine, debian, ...)
> 2. Ferramentas de SO escolhidas
> 3. Linguagem de programação
>
> Com as especificações de uma imagem, é gerado um container.

### Container:

> 1. Acontece quando é executada uma imagem
> 2. É efêmera, ou seja, um container não foi feito para rodar permanentemente. Ele possui um ciclo, com início, meio e fim.

- A tecnologia escolhida para fazer o gerenciamento de containeres foi o **Docker**

# Docker
build
run
exec
ps
images
network
volume

`docker run --rm -d --network first-network-bridge -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=rocketseat-db -e MYSQL_USER=admin -e MYSQL_PASSWORD=root --name mysql mysql:8`

docker run -v volume-teste:/app -p 3001:3000 --network first-network-bridge --rm -d api-rocket:v4
