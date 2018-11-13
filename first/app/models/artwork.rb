# == Schema Information
#
# Table name: artworks
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
  validates :title, presence: true, uniqueness: {scope: :artist_id, 
    message: "User cannot reuse title" }
  validates :image_url, presence: true, uniqueness: true
  
  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User
    
end