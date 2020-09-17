#CLI Controller 

class ComposerFinderYes::CLI 
    
    def call
        greeting 
        opening_menu
    end

    def greeting
        puts "Hello! Welcome to the Discovering The Great Composers app!
        This app can help you find out about composers you may not know about yet."
    end
    
    def opening_menu 
        puts "What would you like to do: list, help, or quit?"
    end 

    def menu
        puts "What would you like to do: list, info, help, or quit?"
    end

    def list
        puts "Here is a randomized list of influential composers:"
        (#Asks user how many return values they would like; Defaults to 10 values.)
        #Generates a list of composers (that covers a range of time periods).
            #Gets data from Api class.
            #Randomly selects values.
            #Returns list to user.
            #Saves list for later?
            #calls #menu method.
    end

    def help
        puts    "list - Lists a set of random composers.
                help - Brings up this dialog
                info - Gives the composer's dates and time period (and link to portrait?).
                quit - Exits the program."
        menu
    end

    def quit
        puts "Thank you for using the Discovering the Great Composers app!"
        #Quits program.
    end

end 
    
