class SessionsController < ApplicationController

  def new
  end

  def create
    @name = params[:name]

    if @name.nil? || @name.empty?
      redirect_to login_url
    else
      session[:name] = @name
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
