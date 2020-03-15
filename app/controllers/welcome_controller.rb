class WelcomeController < ApplicationController
  def index
    @welcome = Recipe.all.order("created_at DESC")
  end
  def popular
    @welcome = Recipe.all.order("counter DESC LIMIT 5") 
   end
  
end
