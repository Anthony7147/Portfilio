class NotebooksController < ApplicationController
  def index
    @notebooks_items = Notebook.all
  end

  def angular
    @angular_notebooks_items = Notebook.angular
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

  def edit
    @notebook_item = Notebook.find(params[:id])
  end

  def update
    @notebook_item = Notebook.find(params[:id])

    respond_to do |format|
      if @notebook_item.update(params.require(:notebook).permit(:title, :subtitle, :body))
        format.html { redirect_to notebooks_path, notice: 'The record was successfully updated.' }

      else
        format.html { render :edit }

      end
    end
  end

  def show
    @notebook_item = Notebook.find(params[:id])
  end

  def destroy
    #Perform the lookup
    @notebook_item = Notebook.find(params[:id])
    # Destroy/delete the record
    @notebook_item.destroy
    # Redirect
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Record was removed.' }
    end
  end
end
