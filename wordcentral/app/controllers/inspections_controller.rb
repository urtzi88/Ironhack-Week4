class InspectionsController < ApplicationController

  def new
    render 'new'
  end

  def create
    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(' ').length
    @time_to_read = @word_count * 60 / 275

    word_freq_helper = {}
    @text.split(' ').each do |item|
      if word_freq_helper[item.to_sym]
        word_freq_helper[item.to_sym] += 1
      else
        word_freq_helper[item.to_sym] = 1
      end
    end
    @word_freq = word_freq_helper.sort_by{ |k, v| v }.reverse
    @word_freq = @word_freq[0..9]

    render 'results'
  end

end
