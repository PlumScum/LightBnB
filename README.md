# LightBnB

A database application project developed as a part of _[Lighthouse Labs Web Development](https://www.lighthouselabs.ca/en/web-development)_ course. The front-end is forked from [lighthouse-labs/LightBnB_WebApp](https://github.com/lighthouse-labs/LightBnB_WebApp)

Install the LightBnB_WebApp `npm install`, run it `npm run local`, and view it at `localhost:3000`!

## Project Structure
* Setup related files
  * `docs` documentation info
  * `migrations` files related to creating the database
  * `seeds` database with fake data
  * `queries` sample database queries
* `LightBnB_WebApp`
  * `public` contains the required HTML, CSS, and client side JavaScript
    * `index.html` the heart of the single-page application
    * `javascript` contains the JS client-side files
      * `index.js` renders the listings at the start of the application
      * `network.js` manages the ajax requests to the server
      * `views_manager.js` manages which components appear on screen
      * `components` contains individual HTML components, created using jQuery
      *  `libraries` contains essential JS components, inherited by the fork
  * `styles` contains the necessary sass files
  * `routes` contains all of the server side and database code.
    * `apiRoutes.js` and `userRoutes.js` are responsible for any HTTP requests to `/users/something` or `/api/something`. 
  * `server.js` Connecting the routes to the database, this is the entry point to the application
* `database.js` is responsible for all queries to the database. It doesn't currently connect to any database, all it does is return data from `.json` files.

# ERD
## Diagram
![ERD](docs/ERD.png)
## ERD Info
- _`users`_
  - `id`: Primary Key
  - `name`
  - `email`
  - `password`
  
- _`properties`_
  - `id`: Primary Key
  - `title`
  - `description`
  - `thumbnail_photo_url`
  - `cover_photo_url`  
  - `owner_id` : Foreign Key _`users(id)`_
  - `cost_per_night`
  - `country`
  - `street`
  - `city`
  - `province`
  - `postal_code`
  - `parking_spaces`
  - `number_of_bedrooms`
  - `number_of_bathrooms`

- _`reservations`_
  - `id`: Primary Key
  - `start_date`
  - `end_date`
  - `property_id` : Foreign Key _`properties(id)`_
  - `guset_id` : Foreign Key _`users_id(id)`_

- _`property_reviews`_
  - `id`: Primary Key
  - `guest_id` : Foreign Key _`users(id)`_
  - `property_id` : Foreign Key _`properties(id)`_
  - `reservation_id` : Foreign Key _`reservations(id)`_
  - `message`
  - `rating`


  # Migrations
## [schema.sql](migrations/01_schema.sql)
Creates database `lightbnb` and switches to it.

# Sample Queries
## [getUserByEmail.sql](queries/01_single_user.sql)
Selects _id, name, email & password_ of a given user; here 'tristanjacobs@gmail.com'.
```bash
 id |     name      |          email          |   password
----+---------------+-------------------------+--------------
  1 | Devin Sanders | tristanjacobs@gmail.com |  $2a$10$FB...
(1 row)
```
averageLengthOfReservations
## [averageLengthOfReservations.sql](queries/02_average_reservation_length.sql)
Selects the average duration of all reservations.
```bash
  average_duration   
---------------------
 14.6636000000000000
(1 row)
```
## [listingsByCity.sql](queries/03_property_listings_by_city.sql)
Shows available details aboput properties in Vancouver including their average rating.
```bash
 id  |       title        | cost_per_night |   average_rating   
-----+--------------------+----------------+--------------------
 224 | Nature bite        |          10526 | 4.1000000000000000
 197 | Build they         |          34822 | 4.1000000000000000
  47 | Aside age          |          35421 | 4.2500000000000000
 149 | Present television |          53062 | 4.2222222222222222
(4 rows)

```