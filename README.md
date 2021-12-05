# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## (New) Project Set Up

1. Run `bundle install` to generate Gemfile.lock and bundle all gems.
2. New project environment: [Set up rspec with `bundle exec rails generate rspec:install`.]
3. Start postgres server.
4. Create database with `rake db:create`. (`rake db:drop` will drop databases.)
5. Type `rails server` or `rails s` in root directory of project to run a
local development server.
6. Navigate to _localhost:3000_ to see the application.

## Migrations

1. Add tables, etc., with `rails generate migration create_table_name`.
(Shorthand: `rails g`...)
(See Rails built*in generators with `rails g **help`.)
2. Run migrations with `rake db:migrate`.
3. * Anytime a migration is run, mirror changes in test database `rake db:test:prepare`.
4. Rollback any migration mistakes _not_ shared in production `rake db:rollback`.
Create a _new_ migration if database changes are needed in production.

** When naming migrations, start with a verb to describe the change the migration
will make to the database.

## Terminals Available to Interact with Database

* `psql`
  * Used for running raw SQL commands for interacting with the database.
  * Once a `psql` terminal is open, use `\c [TABLE*NAME]` to move into the record_store db.
  * Less common to use in development, generally speaking.
* `rails c` or `rails console`
  * Interacts directly with the database.
  * Easy to use as a developer, and preferred when ActiveRecord is in play.
