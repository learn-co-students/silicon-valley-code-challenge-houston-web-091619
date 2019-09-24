class FundingRound

    @@all = []

    attr_reader :startup, :venture_capitalist
    attr_accessor :type, :investment

    def initialize(startup, venture, type, investment)
        @startup = startup
        @venture_capitalist = venture
        @type = type
        @investment = investment
        
        @@all << self
    end

    def self.all
        @@all
    end


end
