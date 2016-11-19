# README

## Basic App with SQLite3

+ First: To create a basic rails app with sqlite3 :`rails new ej2 --database=sqlite3 --skip-test-unit --skip-action-mailer --skip-act` 

+ Then: Configure the following files in: `/config/`
    + **application.rb**
    + **environment.rb**
    + **routes.rb**
    + **database.yml**

+ Run the command: `bundle exec rails generate scaffold king name:string kingdom:string date_since:date date_until:date`

+ Configure the validations of the model in `/app/models/king.rb` and the migration in `/db/*_create_kings.rb`

+ Run the setup of the db: `bundle exec rails db:setup` , its the same of:
    + `rails db:create`
    + `rails db:migrate`
    + `rails db:seed`

+ Show how it works!, run: `bundle exec rails s`
 