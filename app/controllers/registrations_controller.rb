class RegistrationsController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)

    if @registration.save
      redirect_to registration_path, notice: "报名成功"
    else
      render :new
    end
  end

  private

  def registration_params
    params.require(:registration).permit()
  end
end
