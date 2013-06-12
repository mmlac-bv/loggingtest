class MongotestController < ApplicationController
  
  def index
    @mongotest = Mongomod.makeSomeNoise()
  end
end

