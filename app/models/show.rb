class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    # return an array of strings containing every musician's name
    self.artists.collect do |t|
      t.name
    end
  end
end