class PagesController < ApplicationController
  def home
  end

  def about
    @user = User.all
  end
end
