Vault Cluster for Test
======================

Consul backed Vault cluster for test. All data is not persistent, so if you down the cluster, it's down.

Execute the migrate.sh from inside Vault to test vault operator migrate within a sandbox.

# Vault CLI

```bash

docker-compose up

docker exec -it vault sh ./migrate.sh

exit

docker-compose down

docker system prune -f
docker volume prune -f


```

