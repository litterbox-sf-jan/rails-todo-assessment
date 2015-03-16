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
  end

  def new
    @todo = Todo.new
  end

  def destroy
  end

  private
  def todo_params
    params.require(:todo).permit(:name)
  end
end
