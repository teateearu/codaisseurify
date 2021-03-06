class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos

  validates :name, presence: true
  validates :bio, presence: true
  validates :remote_image_url, presence: true
end
