class WelcomeController < ApplicationController

  # before_action :authenticate_user!, :except => [:index]
  require 'date'
  def index
    @message = "Welcome to my Blog"
    @articles = Article.all
    respond_to do |format|
      format.html
    end
  end

  def default
    @message = "Welcome to my Blog"
    respond_to do |format|
      format.html
    end
  end
end
