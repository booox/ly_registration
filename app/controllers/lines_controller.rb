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
    @registrations = @line.registrations
  end
end
