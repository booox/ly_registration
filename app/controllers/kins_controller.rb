class KinsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_kin, only: [:edit, :update, :show, :destroy]

  def index
    @user = current_user
    @kins = @user.kins
  end

  def show
  end

  def new
    @kin = Kin.new
  end

  def create
    @kin = Kin.new(kin_params)
    @kin.user = current_user

    if @kin.save
      redirect_to kins_path, notice: "新增亲属信息成功"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @kin.update(kin_params)
      redirect_to kins_path, notice: "修改亲属信息成功"
    else
      render :edit
    end
  end

  def destroy
    @kin.destroy
    redirect_to kins_path
  end

  private

  def find_kin
    @kin = Kin.find(params[:id])
  end

  def kin_params
    params.require(:kin).permit(:name, :cnid, :phonenumber, :gender, :needbed)
  end
end
