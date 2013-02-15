Simple E-Commerce Application
=============================

For this problem, you'll model and code-up an object model to handle a very simplistic e-commerce application. Your task is to determine what classes you need and how they should be implemented.

When you're done, you should be able to handle the [Behaviors](#behaviors) outlined below.


# Model Specifications

- user has a name
- user has an email
- user has a photo
- product has a name
- product has a description
- product has a price
- product has a photo
- photo has a name
- photo has a url


# <a id="behaviors"> Behaviors

## This is your driver code, make it run:

```ruby

## Create a user
user = User.new :name => "ed shadi", :email => "shadi@devbootcamp.com", :photo_name => "shadi", :photo_url => "http://awesome.com/shadi"

## Create a Product
product = Product.new :name => "laptop", :description => "macbook pro", :price => 1500, :photo_name => "macbook", :photo_url => "http://sweet.com/macbook"


## Obtain information about a User
user.name      # should return "ed shadi"
user.email     # should return "shadi@devbootcamp.com"
user.photo     # should return the photo
user.photo.url # should return "http://awesome.com/shadi"

## Obtain information about a Product
product.name         # should return "laptop"
product.description  # should return "macbook pro"
product.price        # should return 1500
product.photo        # should return  photo
product.photo.url    # should return "http://sweet.com/macbook"
```

