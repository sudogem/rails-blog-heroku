### Using postgres in docker.   
docker run \   
         --name postgresdb \   
         -e POSTGRES_PASSWORD=webdevel \   
         -p 5432:5432 \   
         -d postgres:latest   
