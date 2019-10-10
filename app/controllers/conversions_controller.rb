class ConversionsController < ApplicationController
  def index
    
  end
  def convert
      result = params[:payload]
      c = Converter.new
      result[:amount] = c.get_conversion(result[:amount].to_f,result[:from_ticker],result[:to_ticker])
      render :json => result
  end
end
