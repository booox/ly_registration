class Admin::LinesController < ApplicationController
  before_action :find_line, only: [:edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :admin_required

  def index
    @lines = Line.all
  end

  def new
    @line = Line.new
    @batches = Batch.all
  end

  def create
    @line = Line.new(line_params)

    if @line.save
      redirect_to admin_lines_path, notice: "线路添加成功"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @line.update(line_params)
      redirect_to admin_lines_path, notice: "线路更新成功"
    else
      render :edit
    end
  end

  def destory
    @line.destroy
    redirect_to admin_lines_path
  end

  private

  def line_params
    params.require(:line).permit(:title, :description, :start_date, :return_date, :batch_id)
  end

  def find_line
    @line = Line.find(params[:id])
  end
end
