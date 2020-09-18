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

    def dates
        "(#{birth.split("-")[0]}-#{death.split("-")[0]})"
    end

    def composer_age
        @death.to_i - @birth.to_i

    
        #turn into date objects?
        #"https://ruby-doc.org/stdlib-2.7.1/libdoc/date/rdoc/Date.html"
    end

end