class MarksController < ApplicationController
  skip_before_action :verify_authenticity_token
  protect_from_forgery with: :null_session
  
  def index
   @marks = Mark.all
   respond_to do |format|
      format.html
      format.json { render json: @marks }
   end
  end

  def create
    @mark = Mark.new mark_params
    @mark.save
    redirect_to root_path
  end

  def update
    @mark = Mark.find(params[:id])
    if @mark.update(mark_params)
      redirect_to root_path
    else
      head 500
    end
  end

  private
  def mark_params
    params.require(:mark).permit(:lat, :lng, :category, :kind, :state)
  end

end
