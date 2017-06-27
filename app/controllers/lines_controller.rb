class LinesController < ApplicationController
  before_action :authenticate_user!

  def index
    @lines = Line.all
  end

  def show
    @line = Line.find(params[:id])
  end

  def registrations
    @line = Line.find(params[:line_id])

    @batch_first = Batch.find_by(:title => "第一批")
    @batch_second = Batch.find_by(:title => "第二批")
    @registrations_first = @line.registrations.where(:batch_id => @batch_first.id)
    @registrations_second = @line.registrations.where(:batch_id => @batch_second.id)
  end
end
