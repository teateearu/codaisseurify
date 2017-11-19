class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :remote_image_url
  has_many :songs
end
