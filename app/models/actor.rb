class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

   def full_name
     return self.first_name + " " + self.last_name
   end

   def list_roles
     characters.collect {|c| c.name + " - " + c.show.name}
   end
end
