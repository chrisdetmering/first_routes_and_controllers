class Artwork < ApplicationRecord 
  validates :title , uniqueness: { scope: :artist_id }
  validates :title, :image_url, presence: true 
  validates :image_url, uniqueness: true

  belongs_to :artist, 
    class_name: 'User', 
    foreign_key: :artist_id, 
    primary_key: :id

end 