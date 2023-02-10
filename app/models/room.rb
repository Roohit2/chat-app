class Room < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_many :messages

  validates :name, presence: true
  has_many :messages

end
