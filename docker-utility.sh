#!bin/bash

export CONT=meucontainer
docker rm -f $CONT
docker run -d --name $CONT --env-file=myenv.dat dbs-docker-repository.docker.repositories.sap.ondemand.com/llk-accounts-v2:1.9.3.56-SNAPSHOT
docker start $CONT && docker exec -i $CONT /bin/sh -c 'cat > /opt/llk/services/conf/test_aat_metadata.json' < test_aat_metadata.json
docker restart $CONT
docker logs -f $CONT