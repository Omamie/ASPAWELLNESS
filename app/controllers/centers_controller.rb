class CentersController < ApplicationController
  def index
    @centers = current_user.centers
  end

  def show
    @center = Center.find(params[:id])
  end
end
