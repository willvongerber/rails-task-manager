class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    raise
  end

  private

  def restaurant_params
    params.require(:id).permit(:title, :description, :completed)
  end
end
