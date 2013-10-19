class Cop < ActiveRecord::Base
  has_many :tickets
  has_many :victims, :through => :tickets
end
