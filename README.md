# rails-blog-heroku
A simple blog application built using Ruby on Rails framework deployed in Heroku
```
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ rails server -p 3002
```
### Using Postgres database Docker
```
$ docker run \
         --name postgres \
         -e POSTGRES_PASSWORD=webdevel \
         -p 5432:5432 \
         -d postgres:9.6.23-alpine

$ docker start <docker container name>
$ docker inspect <docker container name> | grep IPAddress
```