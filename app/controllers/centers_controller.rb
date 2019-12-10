class CentersController < ApplicationController
  def show
    @center = Center.find(params[:id])
  end
  def index

    if params[:treatment].present? && [:address].present?
       sql_query = "name ILIKE :treatment and address ILIKE :address"
       @treatments = Treatment.where(sql_query, treatment: "%#{params[:treatment]}%" , address:"%#{params[:address]}%")
    else
      @treatments = Treatment.all
    end
  end
end
