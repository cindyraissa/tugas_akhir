class DoctorController < ApplicationController
  def index
  	@doctors = Doctor.all
  end

  def jadwal
  	@doctor = Doctor.find(params[:id])
  end

  def new
  	@doctor = Doctor.new
  end

  def edit
  	@doctor = Doctor.find(params[:id])
  end
end
