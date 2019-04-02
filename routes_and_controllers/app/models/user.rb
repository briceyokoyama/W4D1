class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    
    has_many :artworks,
        class_name: 'ArtWork',
        foreign_key: :artist_id
end
