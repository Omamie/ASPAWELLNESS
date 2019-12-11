class SearchesController < ApplicationController
  def index
    @centers = policy_scope(Center).geocoded
    authorize @centers
    if params[:treatment].present? && [:address].present?
      sql_query = "name ILIKE :treatment and address ILIKE :address"
      @treatments = Treatment.where(sql_query, treatment: "%#{params[:treatment]}%" , address:"%#{params[:address]}%")
    else
      @centers = policy_scope(Center)
    end

    @markers = @centers.map do |center|
      {
        lat: center.latitude,
        lng: center.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { center: center }),
        image_url: helpers.asset_url('circle-cropped.png')
      }
    end
  end
end
