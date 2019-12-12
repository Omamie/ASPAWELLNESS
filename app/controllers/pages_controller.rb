class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def results
    @treatments = Treatment.all
  end

  def help
  end


  def bookings
  end
end
