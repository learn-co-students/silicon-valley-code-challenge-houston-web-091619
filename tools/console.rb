require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# startup = Startup.new('kickstarter', 'swah boi', 'kickstarter.com')
# s2 = Startup.new('gofundme', 'cunt bingo', 'gofundme.com')

# v1 = VentureCapitalist.new('alexis', 10001)
# v2 = VentureCapitalist.new('cash', 100000000001)

# f1 = FundingRound.new(startup, v1, 'angel', 10000000.0)
# f2 = FundingRound.new(startup, v2, 'angel', 342352.0)
# fund = FundingRound.new(s2, v1, 'angel', 423434234234234234.0)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line