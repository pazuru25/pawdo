class PlansController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @plan = Plan.new
    @show_form = params[:show_form].present?
  end
  
end
