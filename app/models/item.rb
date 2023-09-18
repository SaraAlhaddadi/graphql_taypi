# == Schema Information
#
# Table name: items
#
#  id          :bigint           not null, primary key
#  description :text
#  image_url   :string
#  status      :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  artist_id   :bigint           not null
#
# Indexes
#
#  index_items_on_artist_id  (artist_id)
#
# Foreign Keys
#
#  fk_rails_...  (artist_id => artists.id)
#
class Item < ApplicationRecord
  belongs_to :artist
end
