class ComposerFinder::Composer
    require 'date' # A gem to parse dates.

    attr_reader :birth, :death, :epoch

    @@all = [] 

    def initialize(complete_name, birth, death, epoch)
        @complete_name = complete_name
        @birth = birth 
        @death = death 
        @epoch = epoch
        @@all << self 
    end 

    # def birth 
    #     @birth
    # end

    def self.all # Calls up the @@all array.
        @@all
    end 

    def name # So I don't call it @complete_name each time.
        @complete_name
    end

    def birth_year # Parses the :birth attribute format from yyyy-mm-dd to yyyy. Splits by hyphen to exclude everything after the hyphen. Makes the string into an integer. 
        "#{birth.split("-")[0].to_i}"
    end

    def death_year
        if death
            "#{death.split("-")[0].to_i}" 
        else 
            "present"
        end
    end

    def dates
        "(#{birth_year}-#{death_year})"
    end

    # def date_parser # I could build this to streamline repetitive code.
    # end

    def age
        if !birth
            age = "unknown"
        elsif death
            age = death_year.to_i-birth_year.to_i 
        else
            age = Time.new.year-birth_year.to_i
        end
        "aged #{age}" # When I put "puts" at the beginning of this line, my CLI #info method listed the output in the wrong order, i.e. "aged 86 \n Ralph Vaughan Williams (1872-1958), , Late Romantic Era. Why?"
        # end 
        # If the composer is living, this doesn't work. Can create a method that includes the current date.

        #turn into date objects?
        #"https://ruby-doc.org/stdlib-2.7.1/libdoc/date/rdoc/Date.html"
    end
end