class ComposerFinderYes::Composer
    require 'date'

    attr_accessor :complete_name, :birth, :death, :epoch

    @@all = [] 

    def initialize(complete_name, birth, death, epoch)
        @complete_name = complete_name
        @birth = birth 
        @death = death 
        @epoch = epoch
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def name
        @complete_name
    end

    def birth_year
        "#{birth.split("-")[0].to_i}"
    end

    def death_year
        "#{death.split("-")[0].to_i}"
    end

    def dates
        "(#{birth_year}-#{death_year})"
    end

    def age
        "aged #{death_year.to_i} - #{birth_year.to_i}"
        # binding.pry 
    end

        #turn into date objects?
        #"https://ruby-doc.org/stdlib-2.7.1/libdoc/date/rdoc/Date.html"

end