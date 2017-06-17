class Admin::BatchesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  before_action :find_batch, only: [:edit, :update, :destroy]

  def index
    @batches = Batch.all
  end

  def new
    @batch = Batch.new
  end

  def create
    @batch = Batch.new(batch_params)

    if @batch.save
      redirect_to admin_batches_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @batch.update(batch_params)
      redirect_to admin_batches_path
    else
      render :edit
    end
  end

  def destroy
    @batch.destroy
    redirect_to admin_batches_path
  end

  private

  def find_batch
    @batch = Batch.find(params[:id])
  end

  def batch_params
    params.require(:batch).permit(:title, :start_date, :return_date)
  end
end
