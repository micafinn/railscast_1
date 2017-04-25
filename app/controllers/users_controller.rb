class UsersController < ApplicationController
  def index
  end

  def prepare
    session[:user_id] = User.find(:first).id
    redirect_to :action => 'show'
  end

  def show
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(session[:user_id])
    @user.name = ""
    @user.valid?
    redirect_to :action => 'show'
  end
end
