class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new # needed to instantiate the form_for
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.save
    # no need for app/views/appointments/create.html.erb
    #strong params must be added below
    redirect_to appointment_path(@appointment)
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    # this will use the strong params below as with the create action
    # no need for app/views/appointments/update.html.erb
    redirect_to appointment_path(@appointment)
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    # no need for app/views/appointments/destroy.html.erb
    redirect_to appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:time, :duration)
  end
end
