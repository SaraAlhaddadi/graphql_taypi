# GraphQL Taypi

Welcome to the GraphQL Taypi repository! 🚀 This application is built with Ruby on Rails and serves as an example of implementing a GraphQL API. It provides a flexible and efficient way to query and manipulate data using GraphQL, a powerful query language for APIs.
I follow this tutorial 
[Using GraphQL with Ruby on Rails](https://www.apollographql.com/blog/community/backend/using-graphql-with-ruby-on-rails/)

## Features

- **GraphQL API:** ✨ Enjoy the benefits of a GraphQL API that allows you to query and manipulate data in a single request.
- **Ruby on Rails:** 🎉 Built on the reliable and scalable Ruby on Rails framework.
- **Well-organized structure:** 📁 The codebase follows a structured directory layout for easy navigation and maintenance.
- **Simple setup:** 🚀 Get up and running quickly with straightforward installation and configuration.

## Getting Started

To start using the GraphQL Taypi application, follow these simple steps:

1. **Clone the repository:** Begin by cloning this repository to your local machine using the command: `git clone https://github.com/SaraAlhaddadi/graphql_taypi.git`
2. **Install dependencies:** Navigate to the project directory and install the required dependencies by running: `bundle install`
3. **Database setup:** Set up the database by running the following commands: `rails db:create db:migrate`
4. **Start the server:** Launch the application by executing: `rails server`

You can now access the GraphQL API at `http://localhost:3000/graphql`. To interact with the API, you can use a GraphQL client or API testing tool.

## Using GraphQL Controllers

The GraphQL Taypi application provides a set of controllers that handle GraphQL queries and mutations. Here's an example of how to use the GraphQL controllers:

1. **Query Example:**

   To fetch data using a query, send a POST request to the `/graphql` endpoint with the following payload:

   ```json
   {
     "query": "{ users { id name email } }"
   }
   ```
   This example queries the users field to retrieve the id, name, and email of all users.

2. **Mutation Example:**

    To modify data using a mutation, send a POST request to the /graphql endpoint with the following payload:
    ```json

    {
      "query": "mutation { createUser(input: { name: 'John Doe', email: 'john@example.com' }) { id name email } }"
    }
    ```

    This example creates a new user with the name "John Doe" and email "john@example.com" and returns the `id`, `name`, and `email` of the newly created user.

Feel free to explore and experiment with different queries and mutations to interact with the GraphQL API.
Configuration

The application can be easily configured by modifying the files located in the config directory. For environment-specific settings, check the config/environments directory.
Testing

The application includes a comprehensive test suite to ensure its functionality. You can run the tests using the following command:
bash
```sh
bundle exec rspec
```

## Contributions

Contributions are welcome and highly appreciated! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request. Remember to follow the existing coding style and guidelines.
License

This project is licensed under the MIT License. Feel free to use, modify, and distribute the code as per the terms of the license.

About the Author

This application was developed by Sara Alhaddadi, a passionate software developer with expertise in Ruby on Rails and GraphQL.

## Resources
  [GraphQL Documentation](https://graphql.org/)
  
  [Ruby on Rails Guides](https://guides.rubyonrails.org/)
  
---

Feel free to update the README file further to provide more specific details about the project, including its purpose, architecture, and additional instructions for usage or deployment.
