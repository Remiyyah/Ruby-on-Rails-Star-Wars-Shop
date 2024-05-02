# Star Wars eCommerce Shop README

Welcome to my Star Wars eCommerce shop built with Ruby on Rails! This project provides a platform for buying Star Wars merchandise, booking hologram sessions, accessing exclusive memberships, and more!

Below is an overview of the features and components of the application:

## Features


## Components:
<details>
<summary>Optional Google Maps API integration</summary>

## Using Google Maps Geocode API

This project utilizes the Google Maps Geocode API to perform geocoding, i.e., converting addresses into geographic coordinates (latitude and longitude), and vice versa. The Geocode API enables the application to fetch precise location data, which can be used for various purposes such as displaying maps, calculating distances, and providing location-based services.

### API Key

To use the Google Maps Geocode API, you'll need to obtain an API key from the Google Cloud Console. Follow these steps to generate an API key:

1. Sign in to the [Google Cloud Console](https://console.cloud.google.com/).
2. Create a new project or select an existing project.
3. Navigate to the "APIs & Services" > "Credentials" page.
4. Click on "Create credentials" and select "API key".
5. Copy the generated API key and securely store it.

### Integration

Once you have obtained the API key, you can integrate it into your project by setting it as an environment variable or directly within your application code (ensure it's kept secure).

### Making Requests

With the API key configured, you can make requests to the Google Maps Geocode API endpoints using HTTP requests. 

### Documentation

For detailed information about the Google Maps Geocode API, including usage limits, pricing, and API reference, refer to the [official documentation](https://developers.google.com/maps/documentation/geocoding/overview).

---

Feel free to customize this section to include any additional details specific to your project's implementation of the Google Maps Geocode API.
</details>



<details>
  <summary>Models</summary>

  - **User:** Represents a user of the application. Devise gem is used for user authentication.
  
  - **Product:** Represents a product available for purchase in the eCommerce shop.
  
  - **Review:** Represents a review left by a user for a particular product.
  
  - **Booking:** Represents a booking made by a user for a hologram session or event.
  
  - **Cart:** Represents a user's shopping cart, where selected products are temporarily stored before checkout.
  
  - **Payment:** Represents a payment transaction made by a user to purchase products from the eCommerce shop.
  
  - **Favorite:** Represents a user's favorite products or items saved for later viewing or purchase.
  
  - **Item:** Represents an item listed in the eCommerce shop, which can have multiple associated products. This model facilitates the categorization and organization of products.
  
  - **Category:** Represents a category or classification for products, allowing users to browse and filter products based on their interests or preferences.
  
  - **Hologram:** Represents a holographic experience or service available for booking or purchase. This model may include details such as date, time, location, and duration of the hologram session or event.
  
  Each model serves a specific purpose within the application's domain, facilitating various functionalities such as user interaction, product management, and transaction processing. These models work together to provide a seamless and comprehensive eCommerce experience for users.
</details>



<details>
  <summary>Controllers</summary>

  - **UsersController:** Handles user registration, login, and authentication.
  
  - **ProductsController:** Manages CRUD operations for products.
  
  - **ReviewsController:** Manages CRUD operations for reviews.
  
  - **CartsController:** Manages user's shopping cart functionality.
  
  - **BookingsController:** Handles hologram booking functionality.
  
  - **CategoriesController:** Manages CRUD operations for product categories.
  
  - **FavoritesController:** Manages CRUD operations for user's favorite products.
  
  - **HologramController:** Manages CRUD operations for holographic experiences or services.
  
  - **MapController:** Handles integration with Google Maps API for location-related functionalities.
  
  - **PagesController:** Manages static pages and content on the website.
  
  - **PaymentsController:** Handles payment processing for purchases made on the eCommerce platform.
  
  - **ItemsController:** Manages CRUD operations for items listed in the eCommerce shop, facilitating categorization and organization of products.

Each controller is responsible for specific functionalities within the application, facilitating various user interactions and backend operations. Together, they form the backbone of the application's functionality and ensure a seamless user experience.
</details>


<details>
  <summary>Migrations</summary>

  - **AddMembershipToUsers:** Adds membership information to the users table.
  
  - **AddMembershipTierToUsers:** Adds membership tier information to the users table.
  
  - **AddCategoryToItems:** Adds category information to the items table.
  
  - **AddUserIdToCarts:** Adds user ID reference to the carts table.
  
  - **AddIsPurchasedToCarts:** Adds a flag to indicate if a product in the cart has been purchased.
  
  - **AddAttributesToBooking:** Adds attributes to the bookings table for managing hologram bookings.
  
  - **AddUserIdToBookings:** Adds user ID reference to the bookings table.
  
  - **AddItemIdToFavorites:** Adds item ID reference to the favorites table.
  
  - **AddUserIdToFavorites:** Adds user ID reference to the favorites table.
  
  - **AddHologramRefToBookings:** Adds hologram reference to the bookings table for linking bookings to holographic experiences.

Each migration corresponds to a specific database change or addition, helping to maintain the integrity and structure of the database schema.
</details>

<details>
  <summary>Gems</summary>

  - **Devise Gem:** Used for user authentication and management.
  
  - **Will_paginate Gem:** Used for pagination of long lists or tables in the application.

These gems enhance the functionality of the application by providing pre-built solutions for common tasks, such as user authentication and pagination.
</details>


<details>
  <summary>Routes</summary>

  - **users:** Handles user registration, login, and authentication routes.
  
  - **products:** Manages routes for product listing, creation, updating, and deletion.
  
  - **reviews:** Manages routes for creating, updating, and deleting reviews.
  
  - **carts:** Manages routes for adding, updating, and removing items from the shopping cart.
  
  - **bookings:** Handles routes for booking hologram sessions.
  
  - **pages:** Routes for static pages:
    - **index:** Displays the homepage.
    - **account:** Displays the user account page.
    - **membership:** Displays the membership page.
    - **padawan:** Displays the Padawan page.
    - **jedi:** Displays the Jedi page.
    - **apprentice:** Displays the Apprentice page.
</details>
---

## Getting Started:

To run the application locally, make sure you have Ruby on Rails and PostgreSQL installed on your system.

### Installing Dependencies:

First, navigate to the project directory in your terminal and run the following command to install project dependencies:

```bash
bundle install
```

### Setting up the Database:

Before running the Rails server, you need to set up the PostgreSQL database. Make sure PostgreSQL is installed and running on your system.

#### Create the Database:

Run the following command to create the necessary databases:

```bash
rails db:create
```

#### Run Migrations and Seed Data:

Next, run the migrations to set up the database schema:

```bash
rails db:migrate
```

If you have seed data to populate the database, you can run:

```bash
rails db:seed
```

### Starting the Server:

Once the database is set up, you can start the Rails server by running:

```bash
rails server
```

This will start the server locally, and you can access the application in a web browser by visiting `http://localhost:3000`.



---

If you encounter any issues during setup or have any questions, please don't hesitate to reach out!

If you need further assistance or have any questions, please don't hesitate to reach out!
