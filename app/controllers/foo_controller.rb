class FooController < ApplicationController

  def index
      
    @bar=  Bar.new
    @bar.fname = "Fistname"
    @bar.lname = "Lastname"
    @bar.number = 42
    @bar.save!
    puts @bar

  end
end
