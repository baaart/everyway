class MarksController < ApplicationController
  
  def index
   @marks = Mark.all
   respond_to do |format|
      format.html
      format.json { render json: @marks }
   end
  end

end
