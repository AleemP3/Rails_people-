class Person < ApplicationRecord
  has_many :tasks
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def attributes
    "Age: #{self.age}\n Gender: #{self.gender}\n Alive: #{self.alive}\n Relative: #{self.relative}"
  end 
  def title
    "#{self.title}" 
  end 
end
