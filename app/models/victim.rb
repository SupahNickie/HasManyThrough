class Victim < ActiveRecord::Base
  has_many :tickets
  has_many :cops, :through => :tickets
end
