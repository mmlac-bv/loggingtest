class MysqltestController < ApplicationController

  def index
      
    @mysqlmod=  Mysqlmod.new
    @mysqlmod.fname = "Fistname"
    @mysqlmod.lname = "Lastname"
    @mysqlmod.number = 42
    @mysqlmod.save!

  end
end
