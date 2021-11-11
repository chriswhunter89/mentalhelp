class TherapistsController < ApplicationController
  def index
    @therapists = Therapist.all
  end

  def show
    @therapist = Therapist.find(params[:id])
  end

  def new
    @therapist = Therapist.new # needed to instantiate the form_for
  end

  def create
    @therapist = Therapist.new(therapist_params)
    @therapist.save
    # no need for app/views/therapists/create.html.erb
    #strong params must be added below
    redirect_to therapist_path(@therapist)
  end

  def edit
    @therapist = Therapist.find(params[:id])
  end

  def update
    @therapist = Therapist.find(params[:id])
    @therapist.update(therapist_params)
    # this will use the strong params below as with the create action
    # no need for app/views/therapists/update.html.erb
    redirect_to therapist_path(@therapist)
  end

  def destroy
    @therapist = Therapist.find(params[:id])
    @therapist.destroy
    # no need for app/views/therapists/destroy.html.erb
    redirect_to therapists_path
  end

  private

  def therapist_params
    params.require(:therapist).permit(:time, :duration)
  end
end
