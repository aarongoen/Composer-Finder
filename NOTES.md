How to Build a CLI Gem

1. Plan your gem, imagine your interface
2. Start with the project structure - google
3. Start with the entry point - the file run
4. Force that to build the CLI interface
5. Stub out the interface.
6. Start making things real.
7. Discover objects.
8. program

This CLI project helps the user to discover essential classical music composers, using OpenOpus API.

"https://api.openopus.org/composer/list/epoch/all.json"

The CLI should:
    1. Greet the user
    2. Generate a list of composers.
    3. Ask the user if they'd like to:
        A. Print attributes of that work:
            1. time period (called 'epoch' in OpenOpus)
            2. composer dates and age
            3. link to portrait
    <!--B. Ask if they would like to see a list of works of the current attribute:
            a. period
            b. composer
        <!-- c. composer dates -->
    5. Request a new random list of 5 composers
    6. Ask if they'd like to find out more or 'exit'.
    7. Say goodbye to user and exit. 


"Role Playing Scenario"

User types: ./bin/composer-finder

    puts "Hello! Welcome to the Discovering the Great Composers app!
    This app can help you find out about composers you may not know about yet. 

    What would you like to do: list, help, and exit?

User types: "help"

    Main Menu Commands:
        list - Lists a set of random composers.
        help - brings up this dialog
        info - Lists more info about the composer. 
        quit - Exits the program.

    What would you like to do: list, help, and exit?

User types: "list"

    Here is a randomized list of influential composers:
        1. Johann Sebastian Bach
        2. Richard Wagner
        3. Ludwig van Beethoven
        4. Claude Debussy
        5. John Williams

    What would you like to do: list, help, and exit?

User types: "info"

    Please enter the composer you would like know more information about:

User types: "3"

    3. Ludwig van Beethoven (1770-1827), aged 57, Romantic Period

    What would you like to do: list, help, and exit?

User types: "exit"

    Thank you for using the Discovering the Great Composers app!

The user exits the program.


