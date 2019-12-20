class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_my_center

  include Pundit


  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)|(^autocompletes$)/
  end

  private

  def set_my_center
    return unless current_owner?

    @my_center = current_user.centers.first
  end

  def current_owner?
    current_user.present? && current_user.owner?
  end
end
