class TodosController < ApplicationController
  before_action :authenticate
  def index
    @todos = Todo.where(email: current_email)
  end

  def new
    @todo  = Todo.new
  end

  def create
    @todo = Todo.new(todo_params.merge(email: current_email))
    if @todo.save
      redirect_to todos_path
    else
      render :new
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:title, current_email)
  end
end
