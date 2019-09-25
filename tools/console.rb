require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("tinder", "tim", "tinder.com")
s2 = Startup.new("facebook", "mark", "facebook.com")
s3 = Startup.new("insta", "nick", "instagram.com")
s4 = Startup.new("twitter", "ted", "twitter.com")
s5 = Startup.new("bumble", "bee", "bumble.com")

v1 = VentureCapitalist.new("John", 1000000000)
v2 = VentureCapitalist.new("Marky", 20000000000)
v3 = VentureCapitalist.new("Chucky", 2050000000)
v4 = VentureCapitalist.new("Ricky", 4000000000)
v5 = VentureCapitalist.new("Shorty", 300000000)

fr1 = FundingRound.new(s1, v1, "Angel", 700000.50)
fr2 = FundingRound.new(s2, v1, "Angel", 250000.75)
fr3 = FundingRound.new(s3, v2, "Pre-seed", 800000)
fr4 = FundingRound.new(s4, v3, "Angel", 90000)
fr5 = FundingRound.new(s5, v4, "Pre-seed", 100000)
fr6 = FundingRound.new(s5, v5, "Angel", 300000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
