class Api::ColumnsController < ApplicationController
  before_action :set_taskboard
  before_action :set_column, only: [:show, :update, :destroy]

  def index
    render json: @taskboard.columns
  end

  def show
    render json: @column
  end

  def create
    column = @taskboard.columns.new(column_params)

    if column.save
      render json: column
    else
      render json: column.errors, status: 422
    end
  end

  def update
    if @column.update(column_params)
      render json: @column 
    else
      render json: @column.errors, status: 422
    end
  end

  def destroy
    @column.destroy
  end

  private
    def set_taskboard
      @taskboard = Taskboard.find(params[:taskboard_id])
    end

    def set_column 
      @column = Column.find(params[:id])
    end

    def column_params
      params.require(:column).permit(:name)
    end
end
