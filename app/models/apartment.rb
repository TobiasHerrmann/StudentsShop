class Apartment < ActiveRecord::Base
  attr_accessible :adress, :area, :category, :description, :owner, :price, :title
end
