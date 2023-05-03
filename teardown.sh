#!/bin/bash

set -e

docker stop spicedb-datastore

docker rm spicedb-datastore

docker network rm spicedb-net
