class NotebooksController < ApplicationController
  def index
    @notebooks_items = Notebook.all
  end

  def new
    @notebooks_items = Notebook.new
  end

  def create
    @notebook_item = Notebook.new(params.require(:notebook).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @notebook_item.save
        format.html { redirect_to notebooks_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }

      end
    end
  end
end
