set -e

docker network create spicedb-net || true

docker run \
  --name spicedb-datastore \
  --net spicedb-net \
  --restart=always \
  -e POSTGRES_PASSWORD=$(cat secrets/db.password) \
  -e POSTGRES_USER=$(cat secrets/db.user) \
  -e POSTGRES_DB=$(cat secrets/db.name) \
  -p $(cat secrets/db.port):5432 \
  -d postgres:latest