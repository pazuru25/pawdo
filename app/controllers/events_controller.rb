class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:edit, :update, :destroy]
  before_action :set_beginning_of_week


  def index
    @events = Event.all
  end

  def new
 
  end

  def create
  end

  def show
  end

  def edit
  end

  def update

  end

  def destroy
  end

  private
  def set_beginning_of_week
    Date.beginning_of_week = :sunday
  end

  def set_event
    @events = Event.find(params[:id])
  end

  def event_params
    params.require(:plan).permit(
      :title,
      :plan_save_id,
      :start_time,
      :schedule_time,
      :color_id,
      :repetition_id,
      :recurring_id,
      :notification_id
    ).merge(user_id: current_user.id)
  end
end
