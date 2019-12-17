class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @centers = Center.all
  end

  def results
    @treatments = Treatment.all
  end

  def help
  end

  def bookings
  end

  def phone_number
raise
  end
end
