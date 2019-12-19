class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @centers = Center.all
    # @my_center = current_user.centers.first
  end

  def results
    @treatments = Treatment.all
  end

  def help
  end

  def bookings
  end

  def phone_number
  end
end
