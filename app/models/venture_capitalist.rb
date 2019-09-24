class VentureCapitalist

    @@all = []

    attr_accessor :name, :total_worth

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth

        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select do |i|
            i.total_worth >= 1000000000
        end
    end

    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select do |i|
            i.venture_capitalist == self
        end
    end

    def portfolio
        self.funding_rounds.map do |i|
            i.startup
        end.uniq
    end

    def biggest_investment
        self.funding_rounds.max_by do |i|
            i.investment
        end
    end

    def invested(domain)
        self.funding_rounds.select do |i|
            i.startup.domain == domain
        end.map(&:investment).reduce(&:+)
    end
    
end
