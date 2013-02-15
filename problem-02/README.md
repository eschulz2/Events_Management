#### build a basic e-commerce app

```specs


-user has a name
-user has an email
-user has a photo

-product has a name
-product has a description
-product has a price
-product has a photo

-photo has a name
-photo has a url

```

``` behavior:
- create a user:
  user = User.new :name => "ed shadi", :email => "shadi@devbootcamp.com", :photo_name => "shadi", :photo_url => "http://awesome.com/shadi"
- create a product:
  product = Product.new :name => "laptop", :description => "macbook pro", :price => 1500, :photo_name => "macbook", :photo_url => "http://sweet.com/macbook"
- give me a user's name, email, photo:
  user.name # should print "ed shadi"
  user.email # should print "shadi@devbootcamp.com"
  user.photo # should print "shadi @ http://awesome.com/shadi"
-give me a product's name, description, price, photo:
  product.name # should print "laptop"
  product.description # should print "macbook pro"
  product.price # should print 1500
  product.photo # should print "macbook @ http://sweet.com/macbook"

```
