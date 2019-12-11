class CentersController < ApplicationController
  def index
    # @centers = current_user.centers
    authorize @centers
  end

  def show
    @center = Center.find(params[:id])
    authorize @center
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

  def edit
    raise
    @center = current_user.centers
  end

  private

  def safe_params
    params.require(:center).permit(:name, :address, :contact_person)
  end

  def center_page_params
  params.require(:center).permit(:name, :address, :contact_person, :photo)
end
end
