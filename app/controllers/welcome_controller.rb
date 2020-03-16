class WelcomeController < ApplicationController
  def index
    @welcome = Recipe.all.order("created_at DESC")
    if params.has_key?(:category)
      @category= Category.find_by_name(params[:category])
      @recipes =Recipe.where(category: @category)
  else
      @recipes = Recipe.all
  end
  if params[:search]
      @search_term = params[:search]
      @recipes= @recipes.search_by(@search_term)
  end
 end
  def popular
    @welcome = Recipe.all.order("counter DESC LIMIT 5") 
   end
  
end
