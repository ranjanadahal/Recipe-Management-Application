class WelcomeController < ApplicationController
  def index
    @welcome = Recipe.all.order("created_at DESC")
    @welcome = Recipe.all.order("counter DESC")
  end
  def popular
    @welcome = Recipe.all.order("counter DESC")
  end
  
end
