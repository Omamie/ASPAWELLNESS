class TreatmentsController < ApplicationController
  def index
    @treatments = Treatment.all
    authorize @treatments
  end

  def new
    @center = Center.find(params[:center_id])
    @treatment = Treatment.new
    authorize @center
    authorize @treatment
  end

  def create
    @center = Center.find(params[:center_id])
    authorize @center
    @treatment = Treatment.new(safe_params)
    @treatment.center_id = @center.id
    authorize @treatment
    if @treatment.save
      redirect_to center_path(@center)
    else
      render :new
    end
  end

  def edit
    @treatment = Treatment.find(params[:id])
    authorize @treatment
  end

  def update
    @treatment = Treatment.find(params[:id])
    authorize @treatment
    @center = Center.find(params[:center_id])
    authorize @center
    @treatment.update(safe_params)
    redirect_to center_path(@center)
  end

  def destroy
    @treatment = Treatment.find(params[:id])
    authorize @treatment
    @treatment.destroy
  end

  private

  def safe_params
    params.require(:treatment).permit(:name, :description, :price_cents, :category, :photo, :capacity_per_hour, :duration)
  end
end
