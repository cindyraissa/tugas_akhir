class Patient < ActiveRecord::Base
	validates :name_patient, presence: true;
	validates :address, presence: true;
	validates :phone, presence: true;
	validates :email, presence: true;
end
