class TodosController < ApplicationController
  def index
    @todos = Todo.order(created_at: :desc)
  end

  def show
  end

  def create
  end

  def update
  end

  def new
  end

  def destroy
  end
end
