class Artist < ApplicationRecord
  has_many :items, dependent: :destroy

  def full_name
    [first_name, last_name].compact.join('')
  end
end
