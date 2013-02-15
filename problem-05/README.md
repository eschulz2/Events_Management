ActiveRecord Persistence for the E-Commerce Application
=======================================================

Now that you've designed a database schema for your e-commerce application, you can write some code to persist things using ActiveRecord. You'll need to:

- create one or more migrations to handle the creation of your schema
- modify your objects to be ActiveRecord models, adding any helper methods as necessary so that any old code using your objects is not broken

You'll need to ```require_relative "config"``` in any of your classes for things to work properly.