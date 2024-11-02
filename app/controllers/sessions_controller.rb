class SessionsController < ApplicationController
  layout 'session'
  def new
    @user = User.new
  end
end
