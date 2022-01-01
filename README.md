# Rails Record Store

## An Educational Project Working with Rails with Active Record

## By Danielle Thompson

## (New) Project Set Up

1. Run `bundle install` to generate Gemfile.lock and bundle all gems.
2. New project environment: [Set up rspec with `bundle exec rails generate rspec:install`.]
3. Start postgres server in the terminal with command `postgres`.
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

## Tests

## Terminals Available to Interact with Database

* `psql`
  * Used for running raw SQL commands for interacting with the database.
  * Once a `psql` terminal is open, use `\c [TABLE*NAME]` to move into the record_store db.
  * Less common to use in development, generally speaking.
* `rails c` or `rails console`
  * Interacts directly with the database.
  * Easy to use as a developer, and preferred when ActiveRecord is in play.

## Extras

* From the repository's terminal, `rake routes` will allow you to look at routes the
application has implicitly.

## Exercises To Do

1. Test all associations between classes with shoulda-matchers.
(Documentation [here](http://matchers.shoulda.io/docs/v4.1.0/).)
