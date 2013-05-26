class Repair < ActiveRecord::Base
  attr_accessible :address, :collection, :delivery, :description, :firstname, :lastname, :phone
  validates :address, :collection, :delivery, :description, :firstname, :lastname, :phone, :presence => true
  belongs_to :user
end
