class PlansController < ApplicationController
  before_action :authenticate_user!
  before_action :set_plan, only: [:edit, :update, :destroy]
  before_action :set_beginning_of_week


  def index
    @plans = Plan.all
    @view = params[:view]
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to plans_path, notice: '予定が登録されました。'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @plan.update(plan_params)
      redirect_to @plan, notice: '更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @plan.destroy
    redirect_to plans_url, notice: '削除されました。'
  end

  private
  def set_beginning_of_week
    Date.beginning_of_week = :sunday
  end

  def set_plan
    @plan = Plan.find(params[:id])
  end

  def plan_params
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
