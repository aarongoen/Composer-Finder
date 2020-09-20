#CLI Controller 
require 'pry'

class ComposerFinderYes::CLI 
    
    def initialize
        @@short_list = []
    end

    def call # Calls up a new instance of the program and begins the workflow.
        greeting 
        gets_composers
        # ComposerFinderYes::Api # I don't think I need this here
        menu
        info
        help
        goodbye
    end

    def greeting
        puts "Hello! Welcome to the Discovering the Great Composers app!".colorize(:magenta)
        puts "This app can help you find out about composers you may not know about yet." 
    end

    def gets_composers
        ComposerFinderYes::Api.new.gets_composer_hash # Gets the hash from the Api class.
    end

    def menu
        input = nil #Why do I need "input = nil"?
        while input != "exit"
            puts "What would you like to do: list, info, help, or exit?".colorize(:light_cyan)
            input = gets.strip

            case input 
            when "list"
                list
            when "info" # This could be streamlined if #info took an argument quantity of composers requested.
                info
            when  "help"
                help
            when  "exit"
                goodbye # Says goodbye.
                exit
            else
                puts "Invalid entry. What would you like to do: list, info, help, or exit?"
            end 
        end
    end

    def list
        #(Asks user how many return values they would like; Defaults to 5 values.)
        #Generates a list of composers (that covers a range of time periods).
        #Returns list to user.
        # @@short_list = []

        puts "Here is a randomized list of influential composers:"

        ComposerFinderYes::Composer.all.each_with_index do |composer, i|  # Gets data from Composer hash and goes through each instance and indexes it.
            puts "  #{i+1}. #{composer.name}" # Puts the index and composer name.
            @@short_list << composer # Puts the new instance in the @@short_list array that was initialized at the beginning of this (.CLI) class.
        end 
    end
    

    def info 
       puts "Which composer would you like to learn more about?"
            
        input = gets.strip
        index = input.to_i-1
        if index.between?(0, @@short_list.length-1) # Validates input to avoid error. User cannot enter 0 or any number higher than how many are in the array.
            composer = @@short_list[index]
            puts "  #{composer.name} #{composer.dates}, #{composer.age}, #{composer.epoch} Era" # When I leave out "puts" it only outputs composer's age, nothing else. Why?
        elsif input == "exit"
            exit
        elsif input == "list"
            list 
        else
            puts "Invalid entry. What would you like to do: select a composer by number, list, help, or exit?"   
        end   
    end

    def help
        puts "      list - Lists a set of random composers."
        puts "      help - Brings up this dialog"
        puts "      info - Gives the composer's dates and era."
        puts "      exit - Exits the program."
    end
    # binding.pry
    def goodbye
            puts "    Thank you for using the Discovering the Great Composers app!".colorize(:light_cyan)
    end
    
end


