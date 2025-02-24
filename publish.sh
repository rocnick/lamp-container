#! /bin/bash

if [ $# -ne 1 ]; then
  echo "You must include exactly one parameter."
  echo "Please provide the docker hub repository this project should be published to."
  exit 1
fi

repo=$1



docker build -t $repo/web-server:latest -f Dockerfile .

# Tag with a version number if you need to
# docker tag v1.2 $repo/web-server:latest

docker push $repo/web-server:latest

# To an external repo
# docker push publicrepository.com/$repo/web-server:latest

# Or build and push at the same time
# docker build --push -t $repo/web-server -f Dockerfile .

