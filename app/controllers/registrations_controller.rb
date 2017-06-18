class RegistrationsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_registration, only: [:show, :edit, :update, :destroy, :step1, :step1_update, :step2, :step2_update]

  def index
    @registration = current_user.registration
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
      # redirect_to registration_path(@registration), notice: t("registration.new_registration_ok")
      redirect_to step2_registration_path(@registration)
    else
      render :new
    end
  end

  def step1
  end

  def step1_update
    if @registration.update(registration_params)
      redirect_to step2_registration_path(@registration)
    else
      render :step1
    end
  end

  def step2
  end

  def step2_update
    if @registration.update(registration_params)
      redirect_to registration_path
    else
      render :step2
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
    redirect_to lines_path
  end

  private

  def registration_params
    params.require(:registration).permit(:batch_id, :line_id, :is_room_share, :room_mate)
  end

  def find_registration
    @registration = Registration.find(params[:id])
  end
end
