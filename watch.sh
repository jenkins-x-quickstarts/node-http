#!/usr/bin/env bash
export DOCKER_REGISTRY="${JENKINS_X_DOCKER_REGISTRY_SERVICE_HOST}:${JENKINS_X_DOCKER_REGISTRY_SERVICE_PORT}"
skaffold run -p dev

echo ""
echo "Now watching for changes to the source code..."

 /usr/lib/node_modules/watch-cli/bin/watch -p "*" -c "skaffold run -p dev"
