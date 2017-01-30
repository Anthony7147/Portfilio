class NotebooksController < ApplicationController
  def index
    @notebooks_items = Notebook.all

 end
end
