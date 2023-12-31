class Mutations::CreateArtist < Mutations::BaseMutation
  argument :first_name, String, required: true
  argument :last_name, String, required: true
  argument :email, String, required: true

  field :artist, Types::ArtistType, null: false
  field :errors, [String], null: false

  # set the type if you want
  # type Types::ArtistType

  null true

  description "Create The artist"

  # how the createArtist(input: CreateArtistInput!): CreateArtistPayload defined ?
  def resolve(first_name:, last_name:, email:)
    artist = Artist.new(first_name: first_name, last_name: last_name, email: email, user: context[:current_user])

    if artist.save
      { artist: artist, errors: [] }
    else
      { artist: nil, errors: artist.errors.full_messages }
    end
  end
end
