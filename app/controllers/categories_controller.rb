class CategoriesController < ApplicationController
 def index
   # categories = Category.order("created_at DESC")
   categories = Category.all
   render json: categories
 end

 def create
   cetegory = Category.create(cetegory_param)
   render json: cetegory
 end

 def update
   cetegory = Category.find(params[:id])
   cetegory.update(cetegory)
   render json: cetegory
 end

 def destroy
   cetegory = Category.find(params[:id])
   cetegory.destroy
   head :no_content, status: :ok
 end

 private
   def cetegory_param
     params.require(:cetegory).permit(:category_name)
   end
end
