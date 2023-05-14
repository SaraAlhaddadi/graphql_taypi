module Types
  class MutationType < Types::BaseObject
    field :sign_in, mutation: Mutations::SignIn
    # TODO: remove me
    field :test_field, String, null: false,
                               description: 'An example field added by the generator'
    def test_field
      'Hello World'
    end

    # what is the type ?
    field :create_artist, mutation: Mutations::CreateArtist

    field :update_artist, mutation: Mutations::UpdateArtist

    field :create_user, mutation: Mutations::CreateUser
  end
end
