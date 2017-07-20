# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<!-- rails g scaffold Artist fname:string lname:string
rails g scaffold Transaction user_id:integer address:string payment_amount:integer lease_duration:integer user:belongs_to
rails g scaffold Item artist_id:integer title:string medium:string style:string size:integer yoc:integer origin_country:string artist:belongs_to
rails g scaffold TransactionItem transaction_id:integer item_id:integer transaction:belongs_to item:belongs_to
rails g scaffold Appraisal item_id:integer previous_owner:string value:integer condition:integer item:belongs_to


rails d scaffold Artist
rails d scaffold User
rails d scaffold Transaction
rails d scaffold Item
rails d scaffold TransactionItem
rails d scaffold Appraisal -->

<!-- rails d scaffold Transaction
rails d scaffold TransactionItem

rails g scaffold Sale user_id:integer address:string payment_amount:integer lease_duration:integer user:belongs_to
rails g scaffold SaleItem transaction_id:integer item_id:integer transaction:belongs_to item:belongs_to
 -->