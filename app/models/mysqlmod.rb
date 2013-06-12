class Mysqlmod < ActiveRecord::Base

  def self.makeSomeNoise()
    m = Mysqlmod.new
    m.fname = "Steve"
    m.lname = "Jobs"
    m.number = 42

    m.save!

    last = Mysqlmod.last
    return last
  end
end
