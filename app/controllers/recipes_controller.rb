class RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :edit, :update,:destroy]
    before_action :authenticate_user!, except: [:index, :show]
    def index
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
    def show
        @recipe = Recipe.find(params[:id])
        count = @recipe.counter += 1
        @recipe.update_attribute "counter", count
    end   
    def new
        @recipe = current_user.recipes.build
    end
    def create
        @recipe = current_user.recipes.build(recipe_params)

        if @recipe.save
            redirect_to @recipe, notice: "New Recipe Created Successfully"
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @recipe.update(recipe_params)
            redirect_to @recipe, notice: "Update Recipe Successfully"
        else
            render 'edit'
        end
    end

    def destroy
        @recipe.destroy
        redirect_to root_path, notice: "Recipe Deleted Successfully"
    end

    private
    def recipe_params
        params.require(:recipe).permit(:title, :description,:counter, :category_id,:user_id, :image, ingredients_attributes: [:id, :name, :_destroy], directions_attributes: [:id, :step, :_destroy])

    end
    def find_recipe
        @recipe = Recipe.find(params[:id])
    end
end
