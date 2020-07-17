class Song < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: {scope: [:release_year, :artist_name]}  
    validates :released, inclusion: {in: %w(true false)}
    validates :artist_name, presence: :true
    validates :release_year, presence: true, unless: -> {released == false}
    validates :release_year, numericality: {less_than: 2020}
end
