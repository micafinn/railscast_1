class UsersController < ApplicationController
  def index
  end

  def prepare
    session[:user] = User.find(:first)
    redirect_to :action => 'show'
  end

  def show
    @user = session[:user]
  end

  def update
    @user = session[:user]
    @user.name = "Foo"
    redirect_to :action => 'show' 
  end
end
