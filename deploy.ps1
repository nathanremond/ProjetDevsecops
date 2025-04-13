.\gradlew build
docker build -t nathanremond/projetdevsecops:4 .
docker push nathanremond/projetdevsecops:4
kubectl apply -f kubernetes