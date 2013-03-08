# Events

We're going full [CRUD](http://en.wikipedia.org/wiki/Create,_read,_update_and_delete) and building a simple event-management application.  You're a super-admin, so we're free to ignore user authentication.

Instead, we have users and events.  Users can attend many events and an event can be attended by many users.  Events are user-created, too, so an event belongs to a user and a user can create multiple events.

## Objectives

### Associations

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

ActiveRecord normally tries to guess the class name from the association name.  In this case, because the association is called `events_created`, ActiveRecord would try guess that `CreatedEvent` is the class name.  There's no such class and ActiveRecord would raise an exception.

Search for "class_name" in [A Guide to Active Record Associations](http://guides.rubyonrails.org/association_basics.html) to see other examples.

### CRUD It Up

Forgetting about user authentication, create pages which let you (the theoretical super administrator) list, show, edit, and destroy users.  Likewise for events.  Finally create a page that lets you declare that a particular person is attending a particular event.

Some of these pages might the same page, e.g., the "edit event" page might be where you both update the details of an event and select which user(s) are attending.

The database should be populated with dummy data for `users` and `events`, but not for which users are attending which events.
