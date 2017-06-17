class Admin::LinesController < ApplicationController

  def new
    @line = Line.new
  end
end
