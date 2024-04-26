#!/bin/bash

command=${@:1}
DIR="modules/database"

docker run -it --rm \
  -v "$PWD/$DIR":/work \
  -v "$HOME"/.config/gcloud:/.config/gcloud \
  -w /work \
  -e GOOGLE_APPLICATION_CREDENTIALS=/.config/gcloud/usa-kabu-prd.json \
  --entrypoint "/bin/sh" \
  hashicorp/terraform:latest \
  -c "terraform $command"
