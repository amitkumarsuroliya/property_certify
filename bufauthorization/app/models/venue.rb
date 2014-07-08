class Venue < ActiveRecord::Base
  belongs_to :business
  has_many :events

end
