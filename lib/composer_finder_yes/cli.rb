#CLI Controller 
require 'pry'

class ComposerFinderYes::CLI 
    
    def call
        greeting 
        # menu
        # goodbye
    end

    def greeting
        puts "Hello! Welcome to the Discovering The Great Composers app! n\
         This app can help you find out about composers you may not know about yet."
        menu 
    end

    def menu
        #Why do I need "input = nil"?
        input = nil
        while input != "exit"
            puts "What would you like to do: list, info, help, or exit?"
            input = gets.strip.downcase
            case input
            when "list"
                list
            when "info"
                info
            when "help"
                help
            when "exit"
                exit 
            else
                puts "Invalid entry. What would you like to do: list, info, help, or exit?"
            end
            
        end
    end

    def list
        #(Asks user how many return values they would like; Defaults to 5 values.)
        #Generates a list of composers (that covers a range of time periods).
        #Gets data from Api class.
        #Randomly selects values.
        #Returns list to user.
        puts "Here is a randomized list of influential composers:
            1. Giovanni Gabrieli
            2. Johann Sebastian Bach
            3. Ludwig van Beethoven
            4. Claude Debussy
            5. John Williams"
            #@composers = ComposerFinderYes::Composer.short_list
        # menu 
        
        #if user selects one of these composers, call `info`
        #else back to 
        menu
    end

    def info 
        puts "Which composer would you like to learn more about?"
        input = gets.strip
        case input
        #take the composer list and show all attributes
            when "1"
                puts "1. Giovanni Gabrieli, dates, Renaissance Period, link"
            when "2"
                puts "2. Richard Wagner, dates, Romantic Period, link"
            when "3"
                puts "3. Ludwig van Beethoven, dates, Romantic Period, link"
            when "4"
                puts "4. Claude Debussy, dates, Impressionist Period, link"
            when "5"
                puts "5. John Williams, dates, Movie Soundtrack Period, link"
        menu
    end

    def help
                "list - Lists a set of random composers.
                help - Brings up this dialog
                info - Gives the composer's dates and time period (and link?).
                exit - Exits the program."
        menu
    end

    def exit
        "Thank you for using the Discovering the Great Composers app!"
        exit
    end

end
end   
