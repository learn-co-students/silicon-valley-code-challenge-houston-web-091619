class Startup

    attr_accessor :name
    attr_reader :founder, :domain

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot(name, domain)
        @name = name
        @domain = domain
    end

    def self.find_by_founder(founder_name)
        self.all.find do |startup|
            startup.founder == founder_name
        end
    end

    def self.domains
        self.all.map do |startup|
            startup.domain
        end
    end

    def sign_contract(vc, type, investment)
        FundingRound.new(self, vc, type, investment)
    end

    def num_funding_rounds
        count = 0
        FundingRound.all.each do |fundinground|
            if fundinground.startup == self
                count += 1
            end
        end
        count
    end

    def total_funds
        total = 0
        FundingRound.all.each do |fundinground|
            if fundinground.startup == self
                total += fundinground.investment
            end
        end
        total
    end

    def fundingrounds
        FundingRound.all.select do |fundinground|
            fundinground.startup == self
        end
    end

    def investors
        fundingrounds.map do |fundinground|
            fundinground.venture_capitalist
        end
    end

    def big_investors
        self.investors().select do |investor|
            VentureCapitalist.tres_commas_club().include?(investor)
        end
    end






end
