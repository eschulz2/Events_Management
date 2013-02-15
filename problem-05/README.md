ActiveRecord Persistence for the E-Commerce Application
=======================================================

Now that you've designed a database schema for your e-commerce application, you can write some code to persist things using ActiveRecord. You'll need to:

- create one or more migrations to handle the creation of your schema
- modify your objects to be ActiveRecord models, adding any helper methods as necessary so that any old code using your objects is not broken

You'll need to ```require_relative "config"``` in any of your classes for things to work properly, and run ```bundle install``` to pull in the right gems (just once before you start):

```bash
$ bundle install  # installs the required gems
```

Also, be sure you use ```bundle exec` when running the code:

```bash
$ ruby <your driver program>.rb  # the 'bundle exec' makes sure the gems are loaded
```

**NOTE:** We understand that this material is all very new and that this problem may be a struggle for you. Just do your best, implement as much as you can, and you'll have a chance to work through more of it while pairing with your interviewer.
