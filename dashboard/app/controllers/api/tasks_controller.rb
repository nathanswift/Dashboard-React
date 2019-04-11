class Api::TasksController < ApplicationController
  before_action :set_column
  before_action :set_task, only: [:show, :update, :destroy]

  def index
    render json: @column.tasks
  end

  def show
    render json: @task
  end

  def create
    task = @column.tasks.new(task_params)

    if task.save
      render json: task
    else
      render json: task.errors, status: 422
    end
  end

  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: 422
    end
  end

  def destroy
    @task.destroy
  end

  private
    def set_column
      @column = Column.find(params[:column_id])
    end

    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:name, :assigned_to, :description, :started_at, :finish_by, :completed)
    end
end
