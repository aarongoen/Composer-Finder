#CLI Controller 
require 'pry'

class ComposerFinderYes::CLI 
    
    def call
        greeting 
        Api
        # menu
        # goodbye
    end

    def greeting
        puts "Hello! Welcome to the Discovering The Great Composers app! This app can help you find out about composers you may not know about yet."
        menu 
    end

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
                say_goodbye
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
        puts "Here is a randomized list of influential composers:"

        ComposerFinderYes::Composer.all.each_with_index do |composer_name, i|
            "#{i}. #{composer_name}"
        end 

        # save the result to an array called @short_list

            # puts "1. Giovanni Gabrieli 
            # 2. Johann Sebastian Bach
            # 3. Ludwig van Beethoven
            # 4. Claude Debussy
            # 5. John Williams"
        
    #        
    #     # menu 
        
    #     #if user selects one of these composers, call `info`
    #     #else back to 
    #     menu
    end

    # def info 
    #         puts "Which composer would you like to learn more about?"
            
    #         input = gets.strip.downcase
    #         if input.to_i > 0
    #     #take the composer list and show all attributes
    #         # and
    #         index = input.to_i-1
    #         if input == 1
    #             #@list_array[index] i.e. 1. Giovanni Gabrieli, dates, Renaissance Period, link"
    #         if input == 2
    #             #@list_array[index] i.e., "2. Richard Wagner, dates, Romantic Period, link"
    #         if input == 3
    #             #@list_array[index] i.e. "3. Ludwig van Beethoven, dates, Romantic Period, link"
    #         if input == 4
    #             #@list_array[index] i.e. "4. Claude Debussy, dates, Impressionist Period, link"
    #         if input == 5
    #             #@list_array[index] i.e. "5. John Williams, dates, Movie Soundtrack Period, link"
    #         else
    #             menu    
    # end

    def help
         "list - Lists a set of random composers.
                help - Brings up this dialog
                info - Gives the composer's dates and time period and link?.
                exit - Exits the program."
        menu
    end

    def say_goodbye
        "Thank you for using the Discovering the Great Composers app!"
        exit
    end

end 
   
