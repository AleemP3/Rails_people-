class Person < ApplicationRecord

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def attributes
    "Age: #{self.age}\n Gender: #{self.gender}\n Alive: #{self.alive}\n Relative: #{self.relative}"
  end 
end
