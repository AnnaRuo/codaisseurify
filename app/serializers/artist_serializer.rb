class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :age
  
  has_many :songs
end
