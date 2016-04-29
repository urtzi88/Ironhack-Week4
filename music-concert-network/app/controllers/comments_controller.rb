class CommentsController < ApplicationController

  def new
  end

  def create
    @concert = Concert.find(params[:concert_id])
    @comment = @concert.comments.new(entry_params)
    if @comment.save
      redirect_to concert_path(:id => params[:concert_id]) #@concert
    else
      @comments = @concert.comments
      flash.now[:alert] = "Errors"
      render 'concerts/show'
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to concert_path(:id => params[:concert_id])
    flash[:notice] = "Concert deleted successfully"
  end

  private

  def entry_params
    params.require(:comment).permit(:user, :comment)
  end

end
