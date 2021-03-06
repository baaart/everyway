class SessionsController < ApplicationController

  def new
  end

  def create
    if r = request.env['omniauth.auth']
      session[:id] = User.find_or_create_by(uid: r['uid']).id
    end
    redirect_to root_path
  end

  def destroy
    session[:id] = nil
    redirect_to root_path
  end
end
