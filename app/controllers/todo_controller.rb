class TodoController < ApplicationController
  # GET /index
  def index
    @todos = Todo.all
    render json: @todos
  end

  def show
    @todo = Todo.find(params[:id])
    render json: @todo
  end

  private

  def json_response(object)

  end
end
