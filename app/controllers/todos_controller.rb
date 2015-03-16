class TodosController < ApplicationController
  def index
    @todos = Todo.order(created_at: :desc)
  end

  def show
  end

  def create
    Todo.create todo_params
    redirect_to root_path
  end

  def update
    Todo.find(params[:id]).update_attributes(todo_params)
    redirect_to root_path
  end

  def new
    @todo = Todo.new
  end

  def edit
    @todo = Todo.find params[:id]
  end

  def destroy
    Todo.find(params[:id]).destroy
    redirect_to root_path
  end

  private
  def todo_params
    params.require(:todo).permit(:name)
  end
end
