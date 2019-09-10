class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name 
    name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    characters_array = self.characters.collect {|character| character.name}
    shows_array = self.shows.collect {|shows| shows.name}
    role = characters_array.concat shows_array
    roles << role.join(" - ")
    roles
  end
  
end