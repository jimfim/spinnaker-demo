docker build -t jimfim/spinnaker-demo:0.1 . 
docker tag  jimfim/spinnaker-demo:0.1 jimfim/spinnaker-demo:latest


docker push jimfim/spinnaker-demo:0.1
docker push jimfim/spinnaker-demo:latest