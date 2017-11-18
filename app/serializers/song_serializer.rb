class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :artist
  belongs_to :artist
end
