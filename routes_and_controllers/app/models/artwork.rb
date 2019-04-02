class Artwork < ApplicationRecord
    validates :title, uniqueness: { scope: :artist }

    belongs_to :artist,
        class_name: 'User',
        foreign_key: :artist_id
end
