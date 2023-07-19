class PlansController < ApplicationController
  before_action :authenticate_user!

  def index
    @plans = Plan.all
  end

  def new
    @plan = Plan.new
    @show_form = params[:show_form].present?
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to plans_path, notice: 'Plan created successfully.'
    else
      render :new
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:title, :description)
  end
end
