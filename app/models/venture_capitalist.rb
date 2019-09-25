class VentureCapitalist

    attr_accessor :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        tre_comma = self.all.select do |vc|
            vc.total_worth >= 1000000000
        end
       return tre_comma
    end

    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end

    def fundingrounds
        FundingRound.all.select do |fundinground|
            fundinground.venture_capitalist == self
        end
    end

    def portfolio
        fundingrounds.map do |fundinground|
            fundinground.startup
        end
    end

    def biggest_investment
        fundingrounds.max_by {|round| round.investment}
    end

    def invested(domain)
        all = fundingrounds.select {|round| round.startup.domain == domain}
            all.inject(0) {|sum, round| sum + round.investment}
    end







end
