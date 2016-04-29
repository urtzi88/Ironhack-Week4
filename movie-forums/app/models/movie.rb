class Movie < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  def self.save_movies(movies)
    movies.each do |movie|
      Movie.create(title: movie.title, poster: movie.poster, year: movie.year, synopsis: movie.plot)
    end
  end

end
