Simple E-Commerce Application, Revisited
========================================

For this problem, you're going to add some functionality to the simple e-commerce application from problem 2. Specifically, you'll be adding shopping cart functionality.

As with problem 2, when you're done, you should be able to handle the [Behaviors](#behaviors) outlined below.


# Model Specifications

- user has one shopping cart
- shopping cart has many products


# <a id="behaviors"> Behaviors

## ## This is your driver code, make it run

```ruby
# Add a Product to a User's Cart
user = User.new :name => "ed shadi", :email => "shadi@devbootcamp.com", :photo_name => "shadi", :photo_url => "http://awesome.com/shadi"
product = Product.new :name => "laptop", :description => "macbook pro", :price => 1500, :photo_name => "macbook", :photo_url => "http://sweet.com/macbook"
user.add_to_cart(product)
user.cart.first.to_s  # returns "laptop macbook pro"

# Count the Products in a User's Cart
user.cart.count  # returns 1

# Empty a User's Cart
user.empty_cart
user.cart.count  # returns 0
user.cart        # returns []
```
