class Apartment < ActiveRecord::Base
  attr_accessible :adress, :area, :category, :description, :owner, :price, :title, :photo, :rooms
  
  has_attached_file :photo, :styles => { :small => "150x150>" }
  
end
