# README

* Ruby version
`` Ruby 3.0.0 ``

* System dependencies
    - `` Docker ``
    - `` Docker Compose ``

* Configuration
    - `` docker-compose run --rm web bundle install ``

* Database creation
    - `` docker-compose run --rm web rails db:migrate db:test:prepare ``

* Database initialization

* How to run the test suite
    - `` docker-compose run --rm web bin/rspec spec ``

* API endpoints
    - `` GET localhost:3000/transactions``
    - `` GET localhost:3000/transactions/:id ``
    -   ``` 
         POST localhost:3000/transactions 
         Example request payload
          {
            "customer_id": "001",
            "input": "5000",
            "output": "10,000"
          }
        ```

* Deployment instructions

