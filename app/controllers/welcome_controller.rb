class WelcomeController < ApplicationController
  def index
    @welcome = Recipe.all.order("created_at DESC")
  end
end
