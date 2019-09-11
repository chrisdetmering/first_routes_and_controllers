# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :text             not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord 
  validates :title , uniqueness: { scope: :artist_id }
  validates :title, :image_url, presence: true 
  validates :image_url, uniqueness: true

  belongs_to :artist, 
    class_name: 'User', 
    foreign_key: :artist_id, 
    primary_key: :id

  has_many :artwork_shares 
  
  has_many :shared_viewers, 
    through: :artwork_shares, 
    source: :viewer

end 
