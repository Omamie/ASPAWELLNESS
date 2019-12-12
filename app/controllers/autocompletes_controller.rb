class AutocompletesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    treatments = Treatment.search_by_name(params[:q].presence)

    render partial: 'searches/results',
           locals: { treatments: treatments }
  end
end
