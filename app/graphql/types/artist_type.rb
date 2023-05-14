# frozen_string_literal: true

module Types
  class ArtistType < Types::BaseObject
    description "Artist object"
    field :id, ID, null: false
    field :first_name, String
    field :last_name, String
    field :email, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false, description: "the last update"

    field :full_name, String

    # `posted_by` is automatically camelcased as `postedBy`
    # field can be nil, because we added users relationship later
    # "method" option remaps field to an attribute of model
    field :posted_by, UserType, null: true, method: :user

    # 
    def full_name
      [object.first_name, object.last_name].compact.join('')
      "full name from graphql"
    end
  end
end
