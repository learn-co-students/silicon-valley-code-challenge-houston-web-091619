class Startup

    @@all = []

    attr_reader :founder, :domain
    attr_accessor :name

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain

        @@all << self
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def self.all
        @@all
    end

    def self.find_by_founder(founder)
        self.all.find do |i|
            i.founder == founder
        end
    end

    def self.domains
        self.all.map do |i|
            i.domain
        end
    end

    def sign_contract(venture, type, investment)
        FundingRound.new(self, venture, type, investment)
    end

    def funding_rounds 
        FundingRound.all.select do |i|
            i.startup == self
        end
    end

    def num_funding_rounds
        self.funding_rounds.size
    end

    def total_funds
        self.funding_rounds.map(&:investment).reduce(&:+)
    end

    def investors
        self.funding_rounds.map do |i|
            i.venture_capitalist
        end.uniq
    end

    def big_investors
        self.investors.select do |i|
            VentureCapitalist.tres_commas_club.include?(i)
        end
    end

end
