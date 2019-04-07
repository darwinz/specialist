# SpeciaLIST

All about creating lists and doing the things you can do with those lists

Pre-requisites
------------------

* Ruby 2.4.1+
* Rails 5.1.4+
* PostgreSQL
* NPM 5.3.0+
* Node.js 8.5.0+
* React 16.1.1+


PostgreSQL installation
------------------

Basic installation on Debian you can use the following documentation: [wiki.debian.org/PostgreSql](https://wiki.debian.org/PostgreSql)
on Ubuntu you can use: [help.ubuntu.com/community/PostgreSQL](https://help.ubuntu.com/community/PostgreSQL)

Install / Setup
------------------

* Clone this repository
* Run npm install
```bash
$ npm install
```
* Run bundle
```bash
$ bundle
```
* Create db
```bash
$ bundle exec rake db:create
```
* Run migrations
```bash
$ bundle exec rake db:migrate
```
* Run db seed script
```bash
$ bundle exec rake db:seed
```
* Start rails server
```bash
$ bundle exec rails s
```

Testing
------------------

* Run the test suite
```bash
$ bundle exec bin/rails test test
```
