# == Schema Information
#
# Table name: artists
#
#  id         :bigint           not null, primary key
#  email      :string
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_artists_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Artist < ApplicationRecord
  has_many :items, dependent: :destroy
  belongs_to :user

  def full_name
    [first_name, last_name].compact.join('')
  end
end
