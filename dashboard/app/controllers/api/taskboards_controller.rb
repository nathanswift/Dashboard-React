class Api::TaskboardsController < ApplicationController
  before_action :set_company
  before_action :set_taskboard, only: [:show, :update, :destroy]

  def index
    render json: @company.taskboards
  end

  def show
    render json: @taskboard
  end

  def create
    taskboard = @company.taskboards.new(taskboard_params)

    if taskboard.save
      render json: taskboard
    else
      render json: taskboard.errors, status: 422
    end
  end

  def update
    if @taskboard.update(taskboard_params)
      render json: @taskboard
    else 
      render json: @taskboard.errors, status: 422
    end
  end

  def destroy
    @taskboard.destroy
  end

  private
    def set_company
      @company = Company.find(params[:company_id])
    end

    def set_taskboard
      @taskboard = Taskboard.find(params[:id])
    end

    def taskboard_params
      params.require(:taskboard).permit(:name, :started_at, :finish_by)
    end
end
