class Song < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: {scope: [:release_year, :artist_name]}  
    validates :released, inclusion: {in: [true, false]}
    validates :artist_name, presence: true
    validates :release_year, presence: true, numericality: {less_than: 2020}, unless: -> {released == false}
end
