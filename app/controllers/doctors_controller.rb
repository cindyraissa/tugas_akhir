class DoctorsController < ApplicationController
  def index
  	@doctors = Doctor.all
  end

  def new
  	@doctor = Doctor.new
  end

  def edit
  	@doctor = Doctor.new
  end

  def contact
  end

  def update
    @doctor = Doctor.find_(params[:id])
    if @doctor.update(params_doctor)
      flash[:notice] = "Success Update Records"
      redirect_to action: 'index'
    else flash[:error] = "Data not Valid"
    	render 'index'
    end
  end

private
def params_doctor
  	params.require(:doctor).permit(:noAntrian)
  end
end


