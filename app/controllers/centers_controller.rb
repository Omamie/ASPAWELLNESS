class CentersController < ApplicationController
  def index
    # @centers = current_user.centers
    authorize @centers
    @ce
  end

  def show
    @center = Center.find(params[:id])
  end

  def new
    @center = Center.new
    authorize @center
  end

  def create
    @center = Center.new(safe_params)
    authorize @center
    @center.owner_id = current_user.id
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
