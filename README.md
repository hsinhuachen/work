# README
trestle admin
carrierwave
bootstrap

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Database creation

rails generate model Project title:text title_en:text desc:text desc_en:text thumb:text url:text video:string feature:boolean published:boolean sorting:integer
rails generate model tag name:string
rails generate model tagging tag:belongs_to project:belongs_to
rails generate model gallery name:string sorting:integer project_id:integer

rake db:migrate

rails generate trestle:install
rails generate trestle:resource Project
rails generate trestle:auth:install

rails g uploader Avatar
rails g uploader Gallery


Administrator.create(email: "*****@gmal.com", password: "*****", first_name: "oniondesign", last_name: "")

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
