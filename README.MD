#README

testfdsfd

After pulling:

```
$ bundle install
$ sudo -u postgres psql
psql> create role everyway with createdb login password 'password1';

#Edit pg_hba.conf file:
sudo vim /etc/postgresql/9.3/main/pg_hba.conf
#change in line: "local  all all  peer"  peer to md5
#So it should be:
local   all     all     md5

#Then:
sudo /etc/init.d/postgresql restart

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

