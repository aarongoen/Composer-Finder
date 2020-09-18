#CLI Controller 
require 'pry'

class ComposerFinderYes::CLI 
    
    def initialize
        @@short_list = []
    end

    def call
        greeting 
        gets_composers
        ComposerFinderYes::Api
        menu
    end

    def greeting
        puts "Hello! Welcome to the Discovering The Great Composers app!
This app can help you find out about composers you may not know about yet." 
    end

    def gets_composers
        ComposerFinderYes::Api.new.gets_composer_hash
    end

    #iterate over all composers to enumerate them

    def menu
        #Why do I need "input = nil"?
        input = nil
        while input != "exit"
            puts "What would you like to do: list, info, help, or exit?"
            input = gets.strip.downcase

            if input == "list"
                list
            elsif input == "info"
                info
            elsif input == "help"
                help
            elsif input == "exit"
                exit
            else
                puts "Invalid entry. What would you like to do: list, info, help, or exit?"
            end 
        end
    end

    def list
        #(Asks user how many return values they would like; Defaults to 5 values.)
        #Generates a list of composers (that covers a range of time periods).
        #Gets data from Composer class.
        #Randomly selects values.
        #Returns list to user.
        # @@short_list = []

        puts "Here is a randomized list of influential composers:"

        ComposerFinderYes::Composer.all.each_with_index do |composer, i|
            puts "#{i+1}. #{composer.name}"
            @@short_list << composer
            # binding.pry
        end 
    #   menu
    end
    

    def info 
       puts "Which composer would you like to learn more about?"
            
        input = gets.strip
        index = input.to_i-1
        if index.between?(0, @@short_list.length-1)
            composer = @@short_list[index]
            puts "#{composer.name} #{composer.dates}, #{composer.age}, #{composer.epoch} Era"
        # elsif
        elsif input == "list"
            list 
        else
            puts "Invalid entry. What would you like to do: select a composer by number, list, help, or exit?"   
        end   
    end

    def help
        puts "list - Lists a set of random composers.
help - Brings up this dialog
info - Gives the composer's dates and time period and link?.
exit - Exits the program."
        menu
    end

    def exit
        puts "Thank you for using the Discovering the Great Composers app!"
    end
    
end


