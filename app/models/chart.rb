class Chart < ActiveRecord::Base
  has_many :things
  
  def thing_attributes=(thing_attributes)
    thing_attributes.each do |attributes|
      things.build(attributes)
    end
  end
end