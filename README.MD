#README

After pulling:

```
$ bundle install
$ sudo -u postgres psql
psql> create role everyway with createdb login password 'password1';

$ rake db:prepare
$ rake db:migrate
$ rails server
```

Acces application at: http://localhost:3000

Heroku: http://everyway.herokuapp.com/

##Obstacles and Facilities names:

###Obstacles:
* stairs
* slope
* high curb
* footbridge
* cobbles

###Facilities
* elevator
* elavator platform
* ramp
* low carb
* parking place?

