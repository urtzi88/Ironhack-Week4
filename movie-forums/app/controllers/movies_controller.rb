class MoviesController < ApplicationController

  def search
    if session[:current_user_id].blank?
      #login
      @user = User.new
      render 'login'
    else
      @movie = Movie.new
      render 'search'
    end
  end

  def results
    if params[:movie][:title]
      title = params[:movie][:title]
    elsif params[:title]
      title = params[:title]
    end
    @movies = Movie.where("title LIKE ?", "%#{title}%")
    if @movies.blank?
      #imdb search
      movies = Imdb::Search.new(title).movies
      movies_to_save = []
      movies[0..9].each do |movie|
        unless movie.poster.blank?
          movies_to_save << movie
        end
      end
      Movie.save_movies(movies_to_save)
    end
    @movies = Movie.where("title LIKE ?", "%#{title}%")
    render "index"
  end

  def show
    @movie = Movie.find(params[:id])
    @comments = @movie.comments
    @comment = Comment.new
  end

  def post
    @movie = Movie.find(params[:id])
    @comment = @movie.comments.create(entry_params)
    redirect_to movie_path
  end

  private

  def entry_params
    params.require(:comment).permit(:user, :comment, :date)
  end

end
