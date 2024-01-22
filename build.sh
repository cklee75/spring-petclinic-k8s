#! /bin/sh
eval $(minikube docker-env) 


cd spring-petclinic-api-gateway
mvn spring-boot:build-image -Dmaven.test.skip -Dspring-boot.build-image.imageName=alexandreroman/spring-petclinic-k8s-api-gateway

cd ../spring-petclinic-customers-service
mvn spring-boot:build-image -Dmaven.test.skip -Dspring-boot.build-image.imageName=alexandreroman/spring-petclinic-k8s-customers

cd ../spring-petclinic-vets-service
mvn spring-boot:build-image -Dmaven.test.skip -Dspring-boot.build-image.imageName=alexandreroman/spring-petclinic-k8s-vets

cd ../spring-petclinic-visits-service
mvn spring-boot:build-image -Dmaven.test.skip -Dspring-boot.build-image.imageName=alexandreroman/spring-petclinic-k8s-visits