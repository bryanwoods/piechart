class Chart < ActiveRecord::Base
  has_many :things
  validate :proper_amount
  
  def thing_attributes=(thing_attributes)
    thing_attributes.each do |attributes|
      things.build(attributes)
    end
  end
  
  protected
  
  def proper_amount
    [:thing1amount, :thing2amount, :thing3amount, :thing4amount, :thing5amount].each do |attribute|
      case self[attribute]
      when nil, ""
        # Set nil to 0
        self[attribute] = "0"
      else
        # Do nothing, it's valid
      end
    end
  end
  
end