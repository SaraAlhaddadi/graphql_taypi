class Mutations::UpdateArtist < Mutations::BaseMutation
  argument :artist_id, ID, loads: Artist
  argument :email, String

  field :errors, [String]
  field :artist, Types::ArtistType

  def resolve(artist, email)
    if artist.update(email:)
      { artist:, error: [] }
    else
      { artist: nil, error: artist.errors.full_messages }
    end
  end
end
