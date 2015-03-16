class TodosController < ApplicationController
  after_action :redirect_to_root, only: [:create, :update]

  def index
    @todos = Todo.order(created_at: :desc)
  end

  def show
  end

  def create
    Todo.create todo_params
  end

  def update
    Todo.find(params[:id]).update_attributes(todo_params)
  end

  def new
    @todo = Todo.new
  end

  def edit
    @todo = Todo.find params[:id]
  end

  def destroy
  end

  private
  def todo_params
    params.require(:todo).permit(:name)
  end

  def redirect_to_root
    redirect_to root_path
  end
end
