class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list

    self.actors.full_name.collect do |t|
      t.name
    end
  end
end