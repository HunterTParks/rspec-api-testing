class TodoController < ApplicationController
  # GET /index
  def index
    @todos = Todo.all
    if @todos.empty?
      head :no_content
    else
      json_response(@todos)
    end
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

  def destroy
    @todo = Todo.find(params[:id])
    if @todo.valid?
      @todo.destroy
      head :no_content
    end
  end

  private

  def list_params
    params.permit(:title, :text)
  end
end
