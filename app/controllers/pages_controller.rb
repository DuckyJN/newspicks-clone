class PagesController < ApplicationController
  def home
  end

  def about
    @user = User.all
  end
  def new
    respond_to do |format|
      format.html
      format.js
    end
  end
end
