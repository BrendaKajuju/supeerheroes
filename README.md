# Hero Tracker API
This API for tracks heroes and their superpowers. It provides endpoints to manage heroes, powers, and the relationships between them.

## Getting Started

### Prerequisites
Ruby 2.7.4
Rails 6.1.4

### Installation
1. Clone this repository and in your terminal, in the topmost directory, install the necessary dependencies by running 
```
bundle install
```
2. Set up the database with the following lines of code:
``` 
rails db:create
rails db:migrate
```
3. Seed the database with sample data:
```
rails db:seed
```
4. Start the Rails server:
```
rails server
```
The API will be accessible at http://localhost:3000.

### API Endpoints
The following endpoints are available in the Hero Tracker API:

GET /heroes: Retrieve a list of all heroes.
GET /heroes/:id: Retrieve details of a specific hero by ID.
GET /powers: Retrieve a list of all powers.
GET /powers/:id: Retrieve details of a specific power by ID.
POST /hero_powers: Create a new hero power relationship.
PATCH /powers/:id: Update the description of a specific power.
Refer to the assignment for the expected JSON responses and request body structures for each endpoint.

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, please create a new issue or submit a pull request.

## License
This project is licensed under the MIT License.
