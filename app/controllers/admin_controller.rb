class AdminController < ApplicationController
  def index
    @user = 'tete'
    @loggedin = false
  end
  
  def authenticate
    us = User.where(:username => params[:username], :password => params[:password]).first
    if us == nil
      @loggedin = false
      $loggedin = false
    else
      @loggedin = true
      $loggedin = true
      @user = us.name
    end
    render :action => :index
  end
end
