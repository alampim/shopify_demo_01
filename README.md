# README
#Shopify 2019 summer intern challenege submission.

##Authors
[Edward Crowder](https://github.com/crowdere) 
[Michael Alampi](https://github.com/alampim)

##Description
This project was done by utilizing pair programming and with no knowledge of Ruby or rails. 


DONE | Task
--- | ---
X | Build a server side web api that can be used to fetch products one at a time 
X | Build a server side web api that can be used to fetch products all at once 
X | Every product should have a title, price, and inventory_count.
X | Querying for all products should support passing an argument to only return products with available inventory.
X | Products should be able to be "purchased" and subtract inventory by one

DONE | Extra
--- | ---
X | Fit these product purchases into the context of a simple shopping cart.
X | Bonus points for making your API (at least partly) secure

Things you may want to cover:

* Ruby version
	ruby 2.6.0p0 (2018-12-25 revision 66547) [x86_64-linux]

* System dependencies
	See Gemfile
  
* Configuration
	
* Deployment instructions
	1. Clone repo
  2. bundler install
  3. rails db:migrate
  4. rails server
  5. Curl -X POST to end points