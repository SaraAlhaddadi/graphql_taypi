module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
                               description: 'An example field added by the generator'
    def test_field
      'Hello World!'
      nil
    end

    field :items,
          [Types::ItemType],
          null: false,
          description: 'Returns list of items'

    def items
      Item.all
    end

    field :item, Types::ItemType, null: false do
      argument :id, ID, required: true
    end

    def item(id:)
      User.find(id)
    end

    field :artists_get,
          [Types::ArtistType],
          null: false,
          description: 'Returns artists'
    def artists_get
      Artist.all
    end
  end
end
