# Oniondesign Rails website

## Info 
* Ruby 4.4.3
* Sqllite

## Gem
* trestle admin
* carrierwave
* bootstrap
* pagy

## google font
* Montserrat
* noto

## Database creation
* rails generate model Project title:text title_en:text desc:text desc_en:text thumb:text url:text video:string feature:boolean published:boolean sorting:integer
* rails generate model tag name:string
* rails generate model tagging tag:belongs_to project:belongs_to
* rails generate model gallery name:string sorting:integer project_id:integer
* rails g controller Tags
* rails generate model Cycle title:text image:string sorting:integer
* rails g model Cd cd_id:integer company:text info:text user:string
* rails g migration add_folder_to_cd folder:integer
* rails g migration rename_folder_id_to_cd

## Run
* bundle install
* rake db:migrate
* rails generate trestle:install
* rails generate trestle:resource Project
* rails generate trestle:resource Gallery
* rails generate trestle:resource Cd
* rails generate trestle:auth:install
* rails g uploader Avatar
* rails g uploader Gallery
* rails g uploader Image

* rails generate trestle:resource Cycle

* Administrator.create(email: "*****@gmal.com", password: "*****", first_name: "oniondesign", last_name: "")

* rails g controller Projects




