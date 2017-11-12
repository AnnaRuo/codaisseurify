class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true
  validates :album, presence: true
end
