class PatientsController < ApplicationController
  def index
  	@patients = Patient.all
  end

  def new
  	@patient = Patient.new
  end

  def edit
  	@patient = Patient.find(params[:id])
  end

  def show
  	@patient = Patient.new
  end
  
  def nonMedic

  end

  def Medic
    
  end

  def create
    @patient = Patient.new(params_patient)
    if @patient.save
      flash[:notice] = "Success Add Records"
      redirect_to action: 'show'
    else flash[:errors] = "Data not Valid"
      render 'error'
    end
  end

  def show
  end

  def error
  end

private
  def params_patient
  	params.require(:patient).permit(:doctor_id,:name_patient,:address,:phone,:email)
  end
end
