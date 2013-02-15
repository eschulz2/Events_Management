#### continue building the e-commerce app, add the following functionality:

```specs

-user has one shopping cart
-shopping cart has many products


```

```expected features:
-add a product to a user's cart
  user = User.new :name => "ed shadi", :email => "shadi@devbootcamp.com", :photo_name => "shadi", :photo_url => "http://awesome.com/shadi"
  product = Product.new :name => "laptop", :description => "macbook pro", :price => 1500, :photo_name => "macbook", :photo_url => "http://sweet.com/macbook"
  user.add_to_cart(product) # prints "laptop macbook pro"
-give me the count of products in a user's cart
  user.cart.count # prints 1
-empty a user's cart
  user.empty_cart
  user.cart.count # prints 0
  user.cart # prints "no products"

```
