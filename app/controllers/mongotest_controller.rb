class MongotestController < ApplicationController
  
  def index
    @mongotest = Mongomod.makeSomeNoise()
    if params[:fail] == "true"
      3/0
    end
    render :index, status: :forbidden
  end
end

