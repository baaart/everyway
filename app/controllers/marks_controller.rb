class MarksController < ApplicationController
  skip_before_action :verify_authenticity_token
  protect_from_forgery with: :null_session
  after_filter :cors_set_access_control_headers

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
  end
  
  def index
    #redirect_to login_path and return if current_ser.nil?
    @marks = Mark.all
    respond_to do |format|
      format.html
      format.json { render json: @marks, include: :comments }
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
      head 200
    else
      head 500
    end
  end

  private
  def mark_params
    params.permit(:lat, :lng, :category, :kind, :state)
  end

end
