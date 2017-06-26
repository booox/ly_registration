class Admin::RegistrationsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  before_action :find_registration, only: [:edit, :update, :destroy]

  def index
    @registrations = Registration.all
  end

  def edit
  end

  def update
    if @registration.update(registration_params)
      redirect_to admin_registrations_path, notice: t("registration.edit_registration_ok")
    else
      render :edit
    end
  end

  def destroy
    @registration.destroy
    redirect_to admin_registrations_path
  end

  private

  def find_registration
    @registration = Registration.find(params[:id])
  end

  def registration_params
    params.require(:registration).permit(:batch_id, :line_id, :is_room_share, :room_mate)
  end
end
