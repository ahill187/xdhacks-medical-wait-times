class PatientsController < ApplicationController
  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      session[:patient_id] = @patient.id
      redirect_to '/'
    else
      redirect_to '/patients/signup'
    end
  end

  def show
    @patient = Patient.find(params[:id])
  end

  private
  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :email, :password_digest)
  end
end
