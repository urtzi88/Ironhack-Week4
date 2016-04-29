class AsciisController < ApplicationController

  def new
    render 'new'
  end

  def create
    text = params[:asciis][:user_text]
    @asciis_text = Artii::Base.new :font => 'slant'
    @asciis_text = @asciis_text.asciify(text)
    render 'create'
  end

end
