class SlotsController < ApplicationController
  def new
    @slot = Slot.new
    @center = Center.find(params[:center_id])
  end

  def create
    @center = Center.find(params[:center_id])
    @slot.center_id = @center.id
    @slot = Slot.new(slot_params)
  end


  def slot_params
    params.require(:slot).permit(:start_time, :end_time, :weekday)
  end
end
