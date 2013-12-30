class ActivitiesController < ApplicationController
  
  def new
    @activity = Activity.new
  end

  def create
    @activity = current_user.activities.build(activity_params)
    @activity.save
    redirect_to activities_new_path
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