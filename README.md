# README

GraphQL integration with Ruby on Rails.

Gem used for GraphQL:

[graphql](https://github.com/rmosolgo/graphql-ruby)

## Steps to run the application locally

1. Clone the repository

1. Install Ruby 3.1.2 using RVM or Rbenv

1. Navigate to the project and execute `bundle install`

1. Run migrations
   ```
   rake db:create
   rake db:migrate
   ```

1. Seed data
   ``` 
   rake db:seed
   ```

1. Start the rails server and navigate to `localhost:3000/graphiql`
   ```
   rails s
   ``` 

1. Available querys and mutation
   
   * Fetch Post with id = 1

    ```
    query {
      fetchPost(id: 1) {
        id
        title
        description
        createdAt
        updatedAt
      }
    }
    ```   

    * Fetch all comments

    ```
    query {
      fetchComments {
        id
        title
        content
        postId
        createdAt
        updatedAt
      }
    }
    ```

    * Fetch all comments with post details

    ```
    query {
      fetchComments {
        id
        title
        content
        post {
          id
          title
          description
        }
        createdAt
        updatedAt
      }
    }
    ```

    * Mutation to create a Post

    ```
    mutation {
      createPost(input: { params: { title: "GraphQL blog", description: "GraphQL and Ruby on Rails"  }}) {
        post {
          id
          title
          description
        }
      }
    }
    ```
