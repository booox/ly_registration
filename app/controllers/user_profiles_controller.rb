class UserProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user_profile

  def show
  end

  def edit
    @step1 = params[:selected_line_id].present? ? "Step 1 " : ""
  end

  def update
    @selected_line_id = params[:selected_line_id]

    if @profile.update(profile_params)
      if @selected_line_id
        redirect_to :controller => "registrations", :action => "new", :selected_line_id => @selected_line_id
      else
        redirect_to root_path
      end
    else
      render :edit
    end
  end

  protected

  def find_user_profile
    @user = current_user
    @profile = @user.profile || @user.create_profile
  end

  def profile_params
    params.require(:profile).permit(:name, :phonenumber, :cnid, :gender)
  end


end
