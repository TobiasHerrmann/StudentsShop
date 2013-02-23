class Bookmark < ActiveRecord::Base
  attr_accessible :comment, :title, :url
  
  validates :title, :url, presence: true
end
