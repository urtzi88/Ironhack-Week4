class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new(entry_params)
    if @concert.save
      redirect_to concerts_path
      flash[:notice] = "Concert added successfully"
    else
      flash.now[:alert] = "Errors"
      render "new"
    end
  end

  def show
    @concert = Concert.find(params[:id])
    @comments = @concert.comments
    @comment = @concert.comments.new
  end

  def destroy
    concert = Concert.find(params[:id])
    concert.destroy
    redirect_to concerts_path
    flash[:notice] = "Concert deleted successfully"
  end

  def edit
    @concert = Concert.find(params[:id])
  end

  def update
    @concert = Concert.find(params[:id])
    if @concert.update(entry_params)
      redirect_to concerts_path
    else
      render "edit"
      flash[:alert] = "Errors"
    end
  end

  def by_price
    @concert = Concert.new
  end

  def results
    @concerts = Concert.where("date >= ? and price <= ?", Date.today, params[:by_price][:price].to_f).order("price desc")
    render 'by_price'
  end

  private

  def entry_params
    params.require(:concert).permit(:artist, :venue, :city, :date, :price, :description)
  end

end
