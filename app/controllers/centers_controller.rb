class CentersController < ApplicationController
  def index
    @centers = current_user.centers
    authorize @centers
  end

  def show
    @center = Center.find(params[:id])
  end

  def new
    @center = Center.new
    authorize @center
  end

  def create
    @center.user = current_user
    @center = Center.new(safe_params)
    authorize @center
    if @center.save
      redirect_to center_path(@center)
    else
      render :new
    end
  end

  private

  def safe_params
    params.require(:center).permit(:name, :address, :contact_person)
  end
end
