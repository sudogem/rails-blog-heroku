## How to deploy to Heroku   
1. From Dashboard(https://dashboard.heroku.com/apps), Go to your apps, select your app > then go to Resources tab > Add-ons > Search for Heroku Postgres database then add it   
2. Update the database.yml production section and use the postgres credentials. Something like this:   
production:
  <<: *default
  username: qweasdq12qa334
  password: H01386740H01386740H01386740H01386740H01386740
  database: CIE635838
  host: abc-112-11-100-11.compute-2.amazonaws.com
  port: 5432
   
3. Next run the db migrate command: $ heroku run bundle exec rake db:migrate   
Note: Make sure that you've install the heroku cli. If not installed then execute the command: npm install -g heroku-cli. More info here https://devcenter.heroku.com/articles/heroku-cli
