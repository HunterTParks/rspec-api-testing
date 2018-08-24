class TodoController < ApplicationController
  # GET /index
  def index
    @todos = Todo.all
    render json: @todos
  end
end
