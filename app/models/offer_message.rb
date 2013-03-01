class OfferMessage < ActiveRecord::Base
  attr_accessible :betreff, :email, :message, :name
  
  validates :name, length:{:minimum => 2}
  
  validates :email, format: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  
  validates :betreff, presence: true
  
  validates :message, presence: true
end
