class TodolistsController < ApplicationController
  before_action :find_todolist, only: [:update, :edit, :show, :destroy]
  def index
    @todolists = TodoList.order(created_at: :desc)
  end

  def create
    @todolist = TodoList.new todolist_params
    if @todolist.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @todolist.update_attributes(todolist_params)
    if @todolist.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @todolist = TodoList.new
  end

  def show
  end

  def edit
  end

  def destroy
    @todolist.destroy
    redirect_to root_path
  end

  private
  def todolist_params
    params.require(:todo_list).permit(:title, :description)
  end

  def find_todolist
    @todolist = TodoList.find params[:id]
  end
end
