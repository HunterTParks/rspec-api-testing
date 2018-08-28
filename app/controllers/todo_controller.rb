class TodoController < ApplicationController
  # GET /index
  def index
    @todos = Todo.all
    json_response(@todos)
  end

  def show
    @todo = Todo.find(params[:id])
    json_response(@todo)
  end

  def create
    @todo = Todo.new(list_params)
  end

  private

  def list_params
    params.require(:todo).permit(:title, :text)
  end
end
