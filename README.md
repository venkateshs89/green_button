# README

* Ruby version --> ruby '2.6.3'

* Rails version --> rails '5.2.4'

Steps to setup application:

Step 1: Run bundler and install gems  -->  bundle install

Step 2: Create a database (Postgresql)  -->  rake db:create

Step 3: Migrate the data tables  -->  rake db:migrate

Step 4: Seed the data  -->  rake db:seed

Available endpoints:

1) Storefront #GET (:show)  -->  http://localhost:3000/api/v1/storefronts/10
	--  Should pass storefront_id in payload

2) Brand #GET (:show)  -->  http://localhost:3000/api/v1/brands/19
    --  Should pass brand_id in payload

3) Product #GET (:show)  -->  http://localhost:3000/api/v1/products/15
	--  Should pass product_id in payload

4) Product Detail #GET (:product_detail)  -->  http://localhost:3000/api/v1/products/product_detail
	-- Payload is { "id": product_id }

5) Product Autocomplete #GET (:auto_complete)  -->  http://localhost:3000/api/v1/products/auto_complete
	-- Payload is { "term": "Abcd" }
