require 'test_helper'

class Mutations::CreateArtistTest < ActiveSupport::TestCase
  def perform(**args)
    Mutations::CreateLink.new(object: nil, field: nil, context: {}).resolve(**args)
  end

  test 'create a new artist' do
    artist = perform(
      first_name: 'sara',
      last_name: 'kh',
      email: 's@gmail.com'
    )

    assert artist.persisted?
    assert_equal artist.first_name, 'sara'
    # assert_equal artist.url, 'http://example.com'
  end
end
