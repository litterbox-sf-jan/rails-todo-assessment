class TodosController < ApplicationController
  before_action :find_todo, except: [:create, :new, :index]
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
    @todo.update_attributes(todo_params)
    redirect_to root_path
  end

  def new
    @todo = Todo.new
  end

  def edit
  end

  def destroy
    @todo.destroy
    redirect_to root_path
  end

  private
  def todo_params
    params.require(:todo).permit(:name)
  end

  def find_todo
    @todo = Todo.find params[:id]
  end
end
