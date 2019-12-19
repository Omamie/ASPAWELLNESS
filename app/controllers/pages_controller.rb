class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @centers = Center.all
    if current_user.class == Owner
    @my_center = current_user.centers.first
  else
  end
  end

  def results
    @treatments = Treatment.all
  end
end
