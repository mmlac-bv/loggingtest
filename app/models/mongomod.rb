class Mongomod
  include Mongoid::Document

  field :url,     type: String
  field :posted,  type: DateTime
  field :likes,   type: Integer
  field :tweet,   type: String

  def self.makeSomeNoise
    m = Mongomod.new
    m.url = "http://google.com"
    m.posted = 10.year.ago
    m.likes = 123123213213
    m.tweet = "Check out what I found! :o"

    m.save!

    last = Mongomod.last
    return last
  end
end
