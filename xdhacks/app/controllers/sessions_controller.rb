class SessionsController < ApplicationController
  protect_from_forgery with: :exception
  include SessionsHelper

  def new
  end

  def create
    patient = Patient.find_by(email: params[:session][:email].downcase)
    if patient && patient.authenticate(params[:session][:password])
      log_in patient
      redirect_to patient
      # Log the user in and redirect to the user's show page.
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end
end

