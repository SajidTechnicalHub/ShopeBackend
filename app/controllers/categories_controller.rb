class CategoriesController < ApplicationController
 def index
   # categories = Category.order("created_at DESC")
   categories = Category.all
   render json: categories
 end

 def show
   category = Category.find(params[:id])
   render json: category
 end

 def create
   category = Category.create(category_param)
   render json: category
 end

 def update
   category = Category.find(params[:id])
   category.update(category_param)
   render json: category
 end

 def destroy
   category = Category.find(params[:id])
   category.destroy
   head :no_content, status: :ok
 end

 private
   def category_param
    
     params.require(:category).permit(:category_name)
   end
end
