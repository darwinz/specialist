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
* Create db
```bash
$ rake db:create
```
* Run migrations
```bash
$ rake db:migrate
```
* Run db seed script
```bash
$ rake db:seed
```
* Start rails server
```bash
$ rails s
```
