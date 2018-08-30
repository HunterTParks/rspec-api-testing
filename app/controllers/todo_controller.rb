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
    @todo = Todo.create(list_params)
    if @todo.valid?
      json_response(@todo)
    else
      head :bad_request
    end
  end

  private

  def list_params
    params.permit(:title, :text)
  end
end
