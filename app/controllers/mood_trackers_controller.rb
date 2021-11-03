class MoodTrackersController < ApplicationController
  def show
    @mood_tracker = MoodTracker.find(params[:id])
  end

  def edit
    @mood_tracker = MoodTracker.find(params[:id])
  end

  def update
    @mood_tracker = MoodTracker.find(params[:id])
    @mood_tracker.update(mood_tracker_params)
    # this will use the strong params below as with the create action
    # no need for app/views/mood_trackers/update.html.erb
    redirect_to moodtracker_path(@mood_tracker)
  end

  private

  def mood_tracker_params
    params.require(:mood_tracker).permit(:answers)
  end
end
