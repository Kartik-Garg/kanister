#!/bin/bash

# Copyright 2021 The Kanister Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -o errexit
set -o nounset

IMAGE_REGISTRY="ghcr.io/kanisterio"
IMAGES=("mysql-sidecar" "kafka-adobe-s3-sink-connector" "postgres-kanister-tools" "postgresql" "cassandra" "kanister-kubectl-1.18" "mongo-sidecar" "mongodb" "es-sidecar" "controller" "kanister-tools" "couchbase-tools" "kafka-adobe-s3-source-connector" "foundationdb" "mssql-tools")

TAG=${1:-"v9.99.9-dev"}

for i in ${IMAGES[@]}; do
   docker push $IMAGE_REGISTRY/$i:$TAG
done
