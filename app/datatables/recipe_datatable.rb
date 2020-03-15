class RecipeDatatable < ApplicationDatatable
  private
  def data
    recipes.map do |recipe|
      [].tap do |column|
        column << recipe.id
        column << recipe.title
        column << recipe.descreption
        column << recipe.category.name
       end 
    end
  end

  def count    
    User.find(option[:user][:id]).recipes.count  
  end

 
  def recipes
    @recipes ||= fetch_recipes.order("recipes.#{sort_column} #{sort_direction}").page(page).per(per_page)
  end

  def fetch_recipes
    search_string = []
    columns.each do |term|
      if term != 'id'
        search_string << "CAST(recipes."+term+" as TEXT) like :search" 
      end
    end
    recipes = User.find(option[:user][:id]).recipes
    recipes.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end


  def total_entries
    User.find(option[:user][:id]).recipes.count
  end


  def columns
    %w(id title descreption category)
  end

end