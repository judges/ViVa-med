class Doctor < ActiveRecord::Base
  validates_presence_of :firstname, :lastname, :initials
  #has_many :portfollios, :dependent => :destroy
  #validates_presence_of :cabinet_id, :worktime_id
end
