class RegistrationsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_registration, only: [:show, :edit, :update, :destroy]

  def index
    @registrations = Registration.all
  end

  def show
  end

  def new
    @registration = Registration.new
    @selected_line = Line.find(params[:selected_line_id])
  end

  def create
    @registration = Registration.new(registration_params)
    @registration.user_id = current_user.id

    if @registration.save!
      redirect_to registration_path(@registration), notice: t("registration.new_registration_ok")
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @registration.update(registration_params)
      redirect_to registration_path(@registration), notice: t("registration.edit_registration_ok")
    else
      render :edit
    end
  end

  def destroy
    @registration.destroy
    redirect_to root_path
  end

  private

  def registration_params
    params.require(:registration).permit(:batch_id, :line_id, :is_room_share, :room_mate)
  end

  def find_registration
    @registration = Registration.find(params[:id])
  end
end
