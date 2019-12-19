class SearchesController < ApplicationController
  def index
    @centers = policy_scope(Center).geocoded
    @treatments = policy_scope(Treatment)
    authorize @centers

    if params[:treatment].present? && params[:address].present?
      location = params[:address].split(",")[0]
      sql_query = "treatments.name ILIKE :treatment and centers.address ILIKE :address"
      @cents = Center.joins(:treatments).where(sql_query, treatment: "%#{params[:treatment]}%", address: "%#{location}%")
    elsif params[:address].present?
      location = params[:address].split(",")[0]
      sql_query = "centers.address ILIKE :address"
      @centers = Center.where(sql_query, address: "%#{location}%")
    else
      @centers = policy_scope(Center)
    end

    @treatments = @centers.map { |c| c.treatments.to_a }.flatten.shuffle

    @markers = @centers.map do |center|
      {
        lat: center.latitude,
        lng: center.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { center: center }),
        image_url: helpers.asset_url('red.png')
      }
    end
  end
end
