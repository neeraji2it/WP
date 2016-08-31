class CategoriesController < ApplicationController
	before_filter :is_login?

	def new
	  @category = Category.new
	  @note = Note.new
	end

	def create
	  @category = Category.new(new_params.merge(:user_id => current_user.id))
	  if @category.save
		  redirect_to category_path(@category)
	  else
		  render :action => 'new'
	  end
	end

	def show
	  @category = Category.find(params[:id])
	  @notes = @category.notes
	end

	private

	def new_params
	  params.require(:category).permit!
	end
end
