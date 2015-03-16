class TodosController < ApplicationController
  before_action :find_todo, except: [:create, :new, :index]
  before_action :find_todolist, only: [:index, :create, :new]

  def index
    @todos = @todolist.todos.order(created_at: :desc)
  end

  def create
    @todo = @todolist.todos.create todo_params
    if @todo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @todo.update_attributes(todo_params)
    redirect_to root_path
  end

  def new
    @todo = @todolist.todos.new
  end

  def edit
    @todo = Todo.find params[:id]
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

  def find_todolist
    @todolist = TodoList.find params[:todolist_id]
  end
end
