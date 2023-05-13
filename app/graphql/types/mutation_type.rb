module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
                               description: 'An example field added by the generator'
    def test_field
      'Hello World'
    end

    # what is the type ?
    field :create_artist, mutation: Mutations::CreateArtist

    field :update_artist, mutation: Mutations::UpdateArtist
  end
end
