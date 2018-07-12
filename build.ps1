$version = 0.4;

docker build -t jimfim/spinnaker-demo:$version .
docker tag  jimfim/spinnaker-demo:$version jimfim/spinnaker-demo:latest

docker push jimfim/spinnaker-demo:$version
docker push jimfim/spinnaker-demo:latest

helm package .\chart\spinnaker-demo\ --destination .\repo\
helm repo index --url https://github.com/jimfim/spinnaker-demo/repo .\repo\

#docker run --rm --name spinnaker-demo -d -p 8080:80 jimfim/spinnaker-demo