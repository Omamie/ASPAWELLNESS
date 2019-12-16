class TreatmentsController < ApplicationController
  # This is how url should look like
  # http://localhost:3000/treatments?category=massages
  def index
    @treatments = policy_scope(Treatment)
    authorize @treatments
    # check if params category exists
    if @treatments.where(params[:category])
      # if it exists filter by category
      @treatments = @treatments.where(category: params[:category])
    else
      @treatments
    end
  end

  def new
    @center = Center.find(params[:center_id])
    authorize @center
    @treatment = Treatment.new
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
