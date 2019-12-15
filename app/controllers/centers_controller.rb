class CentersController < ApplicationController
  def index
    @centers = current_user.centers
    authorize @centers
  end

  def show
    @center = Center.find(params[:id])
    @center.photos.build
    authorize @center
    @treatments = Treatment.where(center: @center)
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

  def update
    @center = Center.find(params[:id])
    authorize @center
    if @center.update(safe_params)
      redirect_to @center
    else
      render :show
    end
  end

  def edit
    @center = Center.find(params[:id])
    authorize @center
  end

  def update
    @center = Center.find(params[:id])
    authorize @center
    @center.update(safe_params)
    redirect_to center_path(@center)
  end

  def destroy
    @center = Center.find(params[:id])
    authorize @center
    @center.destroy
    @center = current_user.centers
  end

  private

  def safe_params
    params.require(:center).permit(:name, :address, :contact_person, photos_attributes: [:id, :attachment, :attachment_cache])
  end
end
