# Ruby on Rails Tutorial: sample application

This is the sample application for
[*Ruby on Rails Tutorial: Learn Rails by Example*](http://railstutorial.org/)
by [Michael Hartl](http://michaelhartl.com/).

## points to note 

### bundle install --without production
After downloading this app, you should run above bundle install command first. The **--without production** option prevents the local installation 
of any production gems, which in this case is just pg. otherwise it will report error "Could not find pg-0.12.2 in any of the sources"

### create table 
The second is running command **rake db:migrate** to create mandatory table.