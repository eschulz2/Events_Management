# Events Management Application
By now you should be familiar with basic sinatra apps and creating simple websites.  This problem will give you a chance to demonstrate your proficiency with the web by writing code for controllers, authentication, views, and basic HTML forms with a little bit of CSS.

We're going full [CRUD](http://en.wikipedia.org/wiki/Create,_read,_update_and_delete) and building a simple event-management application.

## Objectives

### Authentication

Authentication is a central concern of most web applications.  We're going to start by creating a simple app that does nothing more than authenticate a user.


#### User Model

You have an empty `User` model and a database with a `users` table.  Add validations to the `User` model which guarantee the following:

1. Every user has an email
2. Every user's email is unique
3. Every email looks like `* @ *.*`
4. Every user has a password

You should not store the user's password directly in the database.

#### Sign Up, Log In, Log Out

Create views to allow a user to:

1. Sign up as a new user
2. Log in as an existing user
3. Log out as an existing user

### Events
We have users and events.  Users can attend many events and an event can be attended by many users.  Events are user-created, too, so an event belongs to a user and a user can create multiple events.

#### Associations

We've already defined the three models for you.  Create the correct associations between them.

The `User` model should have three associations on it.  Given a user, make it so that

```ruby
user.created_events
```

returns the list of events created by `user` and

```ruby
user.attended_events
```

returns the list of events `user` is attending or has attended.

You'll need to use the `:class_name` argument to specify the associated class for the `created_events` and `attended_events` associations, like so:

```ruby
class User < ActiveRecord::Base
  has_many :created_events,
           :class_name => 'Event'
end
```

ActiveRecord normally tries to guess the class name from the association name.  In this case, because the association is called `created_events`, ActiveRecord would try guess that `CreatedEvent` is the class name.  There's no such class and ActiveRecord would raise an exception.

Search for "class_name" in [A Guide to Active Record Associations](http://guides.rubyonrails.org/association_basics.html) to see other examples.

### CRUD It Up

With user authentication in place, create pages which let the user create new events, show their created events, edit events, and destroy events.

### AJAXify it
On the page that lists all the events created by the user, add the form for creating a new event.  Use AJAX on this form so that when a user adds a new event, that new event is appended to the list of created events without refreshing the page.
