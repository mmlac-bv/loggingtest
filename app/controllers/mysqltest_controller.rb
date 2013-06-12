class MysqltestController < ApplicationController

  def index
      
    @mysqlmod=  Mysqlmod.makeSomeNoise

  end
end
