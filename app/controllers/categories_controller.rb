class CategoriesController < ApplicationController
    before_action :find_category, only: [:show, :edit, :update, :destroy]
    def index
		@category = Category.all
    end
    
    def show
       
    end
    def new
        @category = Category.new
    end
    def create
        @category = Category.new(category_params)

        if @category.save
            redirect_to @category, notice: "New category Created Successfully"
        else
            render 'new'
        end
    end

    def edit
       
    end

    def update
        if @category.update(category_params)
            redirect_to @category, notice: "Update Category Successfully"
        else
            render 'edit'
        end
    end

    def destroy
        @category.destroy
        redirect_to root_path, notice: "Category Deleted Successfully"
    end

    private
    def category_params
        params.require(:category).permit(:name)

    end
    def find_category
        @category = Category.find(params[:id])
    end

end
