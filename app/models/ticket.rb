class Ticket < ActiveRecord::Base
  belongs_to :cop
  belongs_to :victim
end
