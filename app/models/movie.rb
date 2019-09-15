class Movie < ApplicationRecord
  # validates_format_of :title, with: /[a-zA-Z0-9]/ # validation for english only
  # validates :title, :year, :plot, :director, presence: true
  # validates :plot, length: { in: 1..500 }
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genres.map { |genre| genre.name }
  end  
end
