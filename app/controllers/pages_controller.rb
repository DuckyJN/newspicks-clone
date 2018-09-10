class PagesController < ApplicationController

  def content
    
  end

  def menu

  end

  def nav

  end

  def stream

  end

  def new
    respond_to do |format|
      format.html
      format.js
    end
  end
end
