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

  private

  def json_response(object)
    render json: object, status: :ok
  end
end
