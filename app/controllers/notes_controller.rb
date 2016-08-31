class NotesController < ApplicationController
  before_filter :is_login?

  def index
  	@notes = current_user.notes
  end

  def new
    @category = Category.find(params[:category_id])
  	@note = Note.new
    respond_format
  end

  def create
    @category = Category.find(params[:category_id])
    @notes = @category.notes
  	@note = Note.new(new_params.merge(:user_id => current_user.id))
  	if @note.save
  		respond_format
  	end
  end

  def edit
  	@note = Note.find(params[:id])
  end

  def update
  	@note = Note.find(params[:id])
  	if @note.update_attributes(new_params)
  		respond_format
  	end
  end

  def destroy
  	@note = Note.find(params[:id])
  	@note.destroy
  	redirect_to notes_path
  end

  private

  def new_params
  	params.require(:note).permit!
  end
end
