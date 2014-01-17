class ActivitiesController < ApplicationController
  
  before_filter :authenticate_user!
  
  def new
    last_activity = current_user.activities.last || Activity.new
    @activity = Activity.new(start_time: last_activity.end_time)
  end

  def create
    @activity = current_user.activities.build(activity_params)
    if @activity.save
      redirect_to new_activity_path
    else
      render :new
    end
  end

  def show
  end

  def index
  end

  def destroy
  end

  private

  def activity_params
    params.require(:activity).permit(:category, :ac_date, :start_time, :end_time, :comentario)
  end


end