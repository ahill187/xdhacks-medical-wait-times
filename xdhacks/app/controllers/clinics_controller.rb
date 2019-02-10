class ClinicsController < ApplicationController
  def new
    @clinic = Clinic.new
  end

  def create
    @clinic = Clinic.new(clinic_params)
    if @clinic.save
      session[:clinic_id] = @clinic.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def show
    @clinic = Clinic.find(params[:id])
  end

  private
  def clinic_params
    params.require(:clinic).permit(:clinic_name, :email, :password_digest)
  end
end

