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
  # @task = Task.new(task_params)
    @task = Task.new(params[:task])
  if @task.save
    redirect_to task_path(@task)
  else
    render :new, status: :unprocessable_entity
  end
end

end
